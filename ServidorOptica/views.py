from django.shortcuts import render
from django.views.generic import TemplateView

from data.models import Instrument, Station, InstrumentModel

class HomePageView(TemplateView):

    template_name = "home.html"
    
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        instrumentTypes = ['All Sky Imager', 'FPI']
        instrumentsASI = ['ASI Jicamarca', 'ASI Boston']
        instrumentsFPI = ['MRH', 'A3O', 'NZK']

        context['instruments'] = Instrument.objects.all()
        context['instrumentTypes'] = instrumentTypes
        context['instrumentsASI'] = instrumentsASI
        context['instrumentsFPI'] = instrumentsFPI
        return context

def InstrumentPrueba(request):
    """
    Función vista para la página inicio del sitio.
    """
    return render(
        request,
        'instruments.html')
