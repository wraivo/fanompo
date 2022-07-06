class MembresController < ApplicationController
    def index
        @membres = Membre.all
    end
end
