class SysUsersController < ApplicationController

  def index
    @sysUsers = SysUser.all
  end

  def show
    @sysUser = SysUser.find(params[:id])
  end

  def new
    @sysUser = SysUser.new
  end

  def edit
    @sysUser = SysUser.find(params[:id])
  end

  def create
    @sysUser = SysUser.new(sysUser_params)

    if @sysUser.save
      redirect_to @sysUser
    else
      render 'new'
    end
  end

  def update
    @sysUser = SysUser.find(params[:id])

    if @sysUser.update(sysUser_params)
      redirect_to @sysUser
    else
      render 'edit'
    end
  end

  def destroy
    @sysUser = SysUser.find(params[:id])
    @sysUser.destroy

    redirect_to sys_user_path
  end

  private
  def sysUser_params
    params.require(:sysUser).permit(:userName, :password, :mobile, :email)
  end
end
