"""Functions to help cook a lasagna from a favorite cookbook."""

EXPECTED_BAKE_TIME = 40
PREPARATION_TIME_PER_LAYER = 2

def bake_time_remaining(elapsed_bake_time):
    """Calculate the bake time remaining.

    :param elapsed_bake_time: int - baking time already elapsed.
    :return: int - remaining bake time (in minutes) derived from 'EXPECTED_BAKE_TIME'.

    Function that takes the actual minutes the lasagna has been in the oven as
    an argument and returns how many minutes the lasagna still needs to bake
    based on the `EXPECTED_BAKE_TIME`.
    """
    return EXPECTED_BAKE_TIME - elapsed_bake_time

def preparation_time_in_minutes(number_of_layers):
    """Calculate the preparation time.

    :param number_of_layers: int - the number of layers in the lasagna.
    :return: int - total preparation time (in minutes) based on 2 minutes per layer.

    This function takes an integer representing the number of layers added to the dish
    and calculates the total preparation time.
    """
    return number_of_layers * PREPARATION_TIME_PER_LAYER

def elapsed_time_in_minutes(number_of_layers, elapsed_bake_time):
    """Calculate the total elapsed cooking time (prep + bake).

    :param number_of_layers: int - the number of layers in the lasagna.
    :param elapsed_bake_time: int - the number of minutes the lasagna has been baking.
    :return: int - total elapsed time (in minutes) spent on both preparation and baking.

    This function adds the total preparation time (based on layers) to the 
    amount of time the lasagna has already spent in the oven.
    """
    return preparation_time_in_minutes(number_of_layers) + elapsed_bake_time