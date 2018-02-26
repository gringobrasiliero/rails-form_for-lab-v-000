class SchoolClassesController <ApplicationController

  def index
    @school_class = Coupon.all
  end

  def new
  end

  def show
      @student = Coupon.find(params[:id])
    end

  def create
    @student = Coupon.new
    @student.coupon_code = params[:coupon_code]
    @student.store = params[:store]
    @student.save
    redirect_to coupon_path(@student)
  end


end
