from django.db import models

# Create your models here.


class Station(models.Model):

    stationName = models.CharField(("Station Name"), max_length=50)
    long = models.CharField(("Longitude"), max_length=50)
    lat = models.CharField(("Latitude"), max_length=50)
    description = models.CharField(
        ("Description of the station"), max_length=50)

    def __str__(self):
        return self.stationName


class InstrumentModel(models.Model):

    modelName = models.CharField(("Name of the model"), max_length=50)
    description = models.CharField(("Description of the model"), max_length=50)
    modelType = models.CharField(("Model Type"), max_length=50)

    def __str__(self):
        return self.modelName

class Instrument(models.Model):

    instrumentName = models.CharField(("Instrument Name"), max_length=50)
    description = models.TextField(("Description of the instrument"))
    instrumentType = models.CharField(("Instrument Type"), max_length=50)
    stationID = models.ForeignKey(Station, verbose_name=(
        "Station Name"), on_delete=models.CASCADE)

    modelID = models.ForeignKey(InstrumentModel, verbose_name=(
        "Station Name"), on_delete=models.CASCADE)
    instrumentImage = models.ImageField(
        ("Instrument Image"), upload_to='data/instruments', blank=False)

    def __str__(self):
        return self.instrumentName


class Experiment(models.Model):
    experimentName = models.CharField(("Experiment Name"), max_length=50)
    modeOp = models.CharField(("Mode of Operation"), max_length=50)
    instrumentID = models.ForeignKey(
        Instrument, verbose_name=(""), on_delete=models.CASCADE)

    def __str__(self):
        return self.modeOp


class InstrumentCharacteristicName(models.Model):
    
    characteristicName = models.CharField(
        ("Characteristic of a instrument"), max_length=50)
    
    def __str__(self):
        return self.characteristicName
    
class InstrumentCharacteristicValue(models.Model):

    characteristicNameID = models.ForeignKey(
        InstrumentCharacteristicName, verbose_name=("Characteristic Name"), on_delete=models.CASCADE, blank=True)

    characteristicsValue = models.CharField(
        ("Value of the Characteristic"), max_length=50)
    instrumentID = models.ForeignKey(
        Instrument, verbose_name=("Instrument"), on_delete=models.CASCADE, blank=True)
    
    def __str__(self):
        return self.characteristicNameID.characteristicName


class Product(models.Model):

    productName = models.CharField(("Product Name"), max_length=50)
    filePath = models.CharField(("File Path"), max_length=50)
    productType = models.CharField(("Tipo de producto"), max_length=50)
    experimentID = models.ForeignKey(
        Experiment, verbose_name=(""), on_delete=models.CASCADE)

    def __str__(self):
        return self.productName


class Setting(models.Model):

    settingsName = models.CharField(("Settings Name"), max_length=50)
    settingValue = models.CharField(("Setting Value"), max_length=50)
    experimentID = models.ForeignKey(Experiment, verbose_name=(
        "Experiment Name"), on_delete=models.CASCADE)

    def __str__(self):
        return self.settingsName
