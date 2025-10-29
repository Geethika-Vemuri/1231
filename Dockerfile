FROM Python : 3.9-slim
WORKDIR/app .
Copy . .
Run pip install flask
EXPOSE :5000
CMD('Python','app.py')
