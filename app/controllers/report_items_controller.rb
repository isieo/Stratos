class ReportItemsController < ApplicationController

  # GET /report_items/1/edit
  def edit
    @report_item = ReportItem.find(params[:id])
  end

  # POST /report_items
  # POST /report_items.json
  def create
    @report_item = ReportItem.new(params[:report_item])

    respond_to do |format|
      if @report_item.save
        format.html { redirect_to @report_item.report, notice: 'Report item was successfully created.' }
        format.json { render json: @report_item, status: :created, location: @report_item }
      else
        format.html { render action: "new" }
        format.json { render json: @report_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /report_items/1
  # PUT /report_items/1.json
  def update
    @report_item = ReportItem.find(params[:id])

    respond_to do |format|
      if @report_item.update_attributes(params[:report_item])
        format.html { redirect_to @report_item.report, notice: 'Report item was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @report_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /report_items/1
  # DELETE /report_items/1.json
  def destroy
    @report_item = ReportItem.find(params[:id])
    @report_item.destroy

    respond_to do |format|
      format.html { redirect_to report_items_url }
      format.json { head :ok }
    end
  end
end
