from django.shortcuts import render
from django.contrib.auth.decorators import login_required

# Create your views here.
def results(request):
    
    return render(
        request,
        'results.html')

@login_required
def userSearch(request):

    return render(request, 'userSearch.html')
