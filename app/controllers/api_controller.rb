class ApiController < ApplicationController

  def assign
    result = {}

    if newDevice = Device.create(:device_id => randomStringWithLength(21))
      result["result"] = "success"
      result["data"] = newDevice
    else
      result["result"] = "failure"
      result["data"] = nil
    end
    render :json => result
  end

  def meeting
    potentials = {}

    potentials["identifier"] = params["identifier"]
    potentials["cost"] = params["cost"]
    potentials["name"] = params["name"]
    potentials["email"] = params["email"]
    potentials["worth"] = params["worth"]
    potentials["people"] = params["people"]
    potentials["time"] = params["time"]

    render :json => Meeting.create(potentials)
  end

  private
  def randomStringWithLength(length)
    letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    newString = ""
    length.times do
      newString += letters[rand(letters.length)]
    end
    return newString
  end

end
