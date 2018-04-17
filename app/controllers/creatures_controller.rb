class CreaturesController < ApplicationController

  def index
    # Find all Creatures and store them in a creatures instance variable
    @creatures = Creature.all
  end

  def show
    # get the creature id from the url params
    creature_id = params[:id]

    # use `creature_id` to find the creature in the database
    # and save it to an instance variable
    @creature = Creature.find_by_id(creature_id)

    # render the show view (it has access to instance variable)
    # remember the default behavior is to render :show
  end


  def new
    @creature = Creature.new
    # remember the default behavior is to render :new
  end

  def create
    # Whitelist params and make them available
    # creature_params = params.require(:creature).permit(:name, :description)

    # Create the new creature from params
    creature = Creature.new(creature_params)

    # Save the creature. If successful, redirect to creatures path. Otherwise do nothing
    if creature.save
        # FIRST VERSION redirects to /creatures INDEX VIEW
        # redirect_to creatures_path

        # REFACTOR REDIRECTS TO THE NEW CREATUE /creatures/:id SHOW VIEW
        redirect_to creature_path(creature)
    end
  end

  def edit
    # get the creature id from the url params
    creature_id = params[:id]

    # use `creature_id` to find the creature in the database
    # and save it to an instance variable
    @creature = Creature.find_by_id(creature_id)

    # render the edit view (it has access to instance variable)
    # remember the default behavior is to render :edit
  end

  def update
    # get the creature id from the url params
    creature_id = params[:id]

    # use `creature_id` to find the creature in the database
    creature = Creature.find_by_id(creature_id)

    # whitelist params and save them to a variable
    # creature_params = params.require(:creature).permit(:name, :description)

    # update the creature
    creature.update_attributes(creature_params)

    # redirect to show page for the updated creature
    redirect_to creature_path(creature)
    # redirect_to creature_path(creature) is equivalent to:
    # redirect_to "/creatures/#{creature.id}"
  end

  def destroy
    # get the creature id from the url params
    creature_id = params[:id]

    # use `creature_id` to find the creature in the database
    # and save it to a variable
    creature = Creature.find_by_id(creature_id)

    # destroy the creature
    creature.destroy

    # redirect to creatures index
    redirect_to creatures_path
    # redirect_to creatures_path is equivalent to:
    # redirect_to "/creatures"
  end

  private

  def creature_params
    # whitelist params return whitelisted version
    params.require(:creature).permit(:name, :description, :avatar)
  end

end
