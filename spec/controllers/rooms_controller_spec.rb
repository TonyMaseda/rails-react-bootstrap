require 'rails_helper'

describe RoomsController do

  before(:each) do
    @request.env["devise.mapping"] = Devise.mappings[:sysadmin]
    @user = FactoryBot.create(:sysadmin)
    @user.roles << Role.where(name: 'sysadmin').first_or_create
    sign_in @user
  end

  render_views

  describe "GET #index" do
    it "renders the :index view" do
      get :index
      expect(response.status).to eq(200)
    end
  end

  describe "GET #show" do
    it 'should render the show view' do
      @room = FactoryBot.create(:room)
      get :show, params: { id: @room.id }
      expect(response.status).to eq(200)
    end
  end

  describe "GET #new" do
    it "renders the :new view" do
      get :new
      expect(response.status).to eq(200)
    end
  end

  describe "GET #edit" do
    it 'should render the edit view' do
      @room = FactoryBot.create(:room)
      get :edit, params: { id: @room.id }
      expect(response.status).to eq(200)
    end
  end

end
