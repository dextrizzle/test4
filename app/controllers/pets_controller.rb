class PetsController < ApplicationController
  def new
    @pet = Pet.new
  end
  def create
    @pet = Pet.create(
        :name => 'Jamie',
        :age => 1,
        :user => current_user,
        :hunger => 10,
        :thirst => 10,
        :sickness => 10,
        :toilet => 10,
        :happyness => 10,
        :sleep => 10
    )
    if @pet.save
      redirect_to root_path
    else
      puts 'hellno'
    end
  end

  private

  def pet_params
    # params.require(:pet).permit()
  end
end
