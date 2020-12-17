require 'rails_helper'

RSpec.describe Event, type: :model do
  before do
    @user = FactoryBot.build(:user)
    @event = FactoryBot.build(:event)
  end
  describe 'イベント投稿機能' do
    context 'イベント投稿がうまくいくとき' do
      it 'nameとexplanationとfacilityとscaleとcategoryがあれば登録できる' do
        expect(@event).to be_valid
      end
    end
    context 'イベント投稿がうまくいかない時' do
      it 'nameが空では登録できない' do
        @event.name = nil
        @event.valid?
        expect(@event.errors.full_messages).to include('Nameを入力してください')
      end
      it 'explanationが空では登録できない' do
        @event.explanation = nil
        @event.valid?
        expect(@event.errors.full_messages).to include('Explanationを入力してください')
      end
      it 'facility_idが1では登録できない' do
        @event.facility_id = 1
        @event.valid?
        expect(@event.errors.full_messages).to include('Facilityは1以外の値にしてください')
      end
      it 'scale_idが1では登録できない' do
        @event.scale_id = 1
        @event.valid?
        expect(@event.errors.full_messages).to include('Scaleは1以外の値にしてください')
      end
      it 'category_idが1では登録できない' do
        @event.category_id = 1
        @event.valid?
        expect(@event.errors.full_messages).to include('Categoryは1以外の値にしてください')
      end
    end
  end
end
