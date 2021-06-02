from flask import Flask,render_template,request,abort
# import json to load json data to python dictionary
import json
# urllib.request to make a request to api
import urllib.request
import logging
import webbrowser
webbrowser.open('http://127.0.0.1:5000')

app = Flask(__name__)
logging.basicConfig(filename='webapp.log', level=logging.DEBUG, format=f'%(asctime)s %(levelname)s %(name)s %(threadName)s : %(message)s')
# read file
with open('file.json', 'r') as myfile:
    data = myfile.read()
    
def tocelcius(temp):
    return str(round(float(temp) - 273.16,2))

@app.route('/',methods=['POST','GET'])
def weather():
    api_key = '48a90ac42caa09f90dcaeee4096b9e53'
    if request.method == 'POST':
        city = request.form['city']
    else:
        #for default name Bangalore
        city = 'Bangalore'

    # source contain json data from api
    try:
        source = urllib.request.urlopen('http://api.openweathermap.org/data/2.5/weather?q=' + city + '&appid='+api_key).read()
    except:
        return abort(404)
    # converting json data to dictionary

    list_of_data = json.loads(source)

    # data for variable list_of_data
    data = {
        "country_code": str(list_of_data['sys']['country']),
        "coordinate": str(list_of_data['coord']['lon']) + ' ' + str(list_of_data['coord']['lat']),
        "temp": str(list_of_data['main']['temp']) + 'k',
        "temp_cel": tocelcius(list_of_data['main']['temp']) + 'C',
        "pressure": str(list_of_data['main']['pressure']),
        "humidity": str(list_of_data['main']['humidity']),
        "cityname":str(city),
    }
    return render_template('index.html',data=data)



if __name__ == '__main__': 
    app.run(debug=True)
