require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  describe "check get flash class" do
    it "with error" do
      expect(helper.flash_class('error')).to eq("alert alert-danger")
    end

    it "with alert" do
      expect(helper.flash_class('alert')).to eq("alert alert-danger")
    end

    it "with success" do
      expect(helper.flash_class('success')).to eq("alert alert-success")
    end

    it "with notice" do
      expect(helper.flash_class('notice')).to eq("alert alert-info")
    end
  end
end
