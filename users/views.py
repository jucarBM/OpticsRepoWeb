from django.shortcuts import render
from django.contrib.auth import authenticate, login, logout
from django.shortcuts import render, redirect
from users.models import Profile, UserRequest
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required

# Create your views here.


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
    """
    if request.method == 'POST':
        try:
            userRequest = UserRequest(
                    firstName=request.POST['first'],
                    lastName=request.POST['last'],
                    institution=request.POST['institution'],
                    reasonToAccess=request.POST['access'],
                    email=request.POST['email'],
                )

            userRequest.save()

        except: 
             return render(request, 'signup.html', {'error': 'Request failed, try again'})
        return render(request, 'success.html', {'message': 'Request sended, in 24h or less we will contact you.'})





    return render(
        request,
        'signup.html')

@login_required
def logoutUser(request):
    logout(request)
    return redirect('users:login')



