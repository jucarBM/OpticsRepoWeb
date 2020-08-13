from django.shortcuts import render
from django.contrib.auth import authenticate, login, logout
from django.shortcuts import render, redirect
from users.models import Profile, UserRequest
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required

# Create your views here.
from users.forms import RequestAccessUser
from django.views.generic import CreateView

def signin(request):
    """
    Función vista para la página signin del sitio.
    """
    if request.method == 'POST':
        email = request.POST['email']
        password = request.POST['pass']
        try:
            username  = User.objects.get(email = email)
        except:
            return render(request, 'signin.html', {'error': 'Invalid email.'})
        user = authenticate(request, username=username, password=password)

        if user:
            login(request, user)
            return redirect('data:user')
        else:
            return render(request, 'signin.html', {'error': 'Invalid password.'})
    else:
        return render(
                request,
                'signin.html')

def requestAccess(request):
    """
    Función vista para la página signup del sitio.
    Así mismo permite la creación  de un request de usario en la base de datos
    utilizando el método POST. Se utiliza el método is_valid de modelo de forms
    para facilitar esta creación.
    """
    if request.method == 'POST':
        form = RequestAccessUser(request.POST)
        if form.is_valid():
            data = form.cleaned_data
            print(data)
            try:
                userRequest = UserRequest(
                        firstName=data['firstName'],
                        lastName=data['lastName'],
                        institution=data['institution'],
                        reasonToAccess=data['reasonToAccess'],
                        email=data['email'],
                    )

                userRequest.save()
            except:
                return render(
                    request,
                    'signup.html',
                    {'error':"Failed to send request, try again."})

            return render(request, 'success.html', {'message': 'Request sent, in 24h or less we will contact you.'})
    else:
        form = RequestAccessUser()

    return render(
        request,
        'signup.html',
        {'form':form})

@login_required
def logoutUser(request):
    logout(request)
    return redirect('users:login')



