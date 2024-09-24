class DoctorDashboardController < ApplicationController
  def index
    @patients_count = Patient.count
    @patients_by_day = Patient.group("DATE(created_at)").count
  end
end
