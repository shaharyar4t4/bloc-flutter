// Event in simple it just class

abstract class InternetEvent  {}

 // InternetEvent is connected to InternetLostEvent or InternetGainedEvent
class InternetLostEvent extends InternetEvent {}

class InternetGainedEvent extends InternetEvent {}