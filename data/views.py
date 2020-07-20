from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from django.views.generic import TemplateView, ListView

from django.contrib.auth.models import User
from data.models import Experiment

class ResultsView(ListView):

    template_name = "results.html"
    model = Experiment

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        return context


class UserHomeView(TemplateView):

    template_name = 'userSearch.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        return context


# def results(request):
    
#     return render(
#         request,
#         'results.html')


# @login_required
# def userSearch(request):

#     return render(request, 'userSearch.html')
