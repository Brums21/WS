from django.http import HttpResponse, HttpRequest
from django.shortcuts import render


# Create your views here.
def index(request):
    assert isinstance(request, HttpRequest)
    if 'peso' in request.POST and 'altura' in request.POST:
        peso = request.POST['peso']
        altura = request.POST['altura']
        if peso and altura:
            try:
                ibm = float(peso)/(float(altura)**2)
                paramIBM=None
                if ibm<18.5:
                    paramIBM='Abaixo do peso ideal'
                elif 18.5 <= ibm < 25:
                    paramIBM='Peso normal'
                elif 25 <= ibm < 30:
                    paramIBM='Excesso de Peso'
                elif 30 <= ibm < 35:
                    paramIBM='Obesidade (grau I)'
                elif 35 <= ibm < 40:
                    paramIBM='Obesidade (grau II)'
                elif ibm>=40:
                    paramIBM='Obesidade (grau III)'
                return render(request, 'index.html', {'ibm': ibm, 'data': True, 'paramIBM': paramIBM})
            except Exception as e:
                return render(request, 'index.html', {'data': False, 'errorConversion': True})
        else:
            return render(request, 'index.html', {'data': False})
    return render(request, 'index.html')


def numerot(request, num):
    tparams = {
        'num_arg': num,
    }

    return render(request, 'index.html', tparams)
