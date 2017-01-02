class FriendshipsController < ApplicationController

  def destroy
    @frienship = current_user.friendships.where(friend_id: params[:id]).first
    @friendship.destroy

    respond_to do |format|
      format.html{ redirect_to my_friend_path, notice: "frined removed"}
  end
end