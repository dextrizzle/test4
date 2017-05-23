class WelcomeController < ApplicationController
  def index
    @pet = Pet.last
  end

  def pet_action
    PetWorker.perform_in(1.minute)
    redirect_to root_path
  end
  helper_method :pet_action

  def feed
    pet = Pet.last
    hp = pet.read_attribute(:hunger)
    pet.update_attribute(:hunger, hp+1)
    pet.save
  end
  helper_method :feed

  def drink
    pet = Pet.last
    hp = pet.read_attribute(:thirst)
    pet.update_attribute(:thirst, hp+1)
    pet.save
  end
  helper_method :drink

  def medicine
    pet = Pet.last
    hp = pet.read_attribute(:sickness)
    pet.update_attribute(:sickness, hp+1)
    pet.save
  end
  helper_method :medicine

  def toilet
    pet = Pet.last
    hp = pet.read_attribute(:toilet)
    pet.update_attribute(:toilet, hp+1)
    pet.save
  end
  helper_method :toilet

  def happyness
    pet = Pet.last
    hp = pet.read_attribute(:happyness)
    pet.update_attribute(:happyness, hp+1)
    pet.save
  end
  helper_method :happyness

  def sleep
    pet = Pet.last
    hp = pet.read_attribute(:sleep)
    pet.update_attribute(:sleep, hp+1)
    pet.save
  end
  helper_method :sleep

  def refresh_part
    @pet = Pet.last
    respond_to do |format|
      format.js { render :refresh_part }
    end
  end
end
