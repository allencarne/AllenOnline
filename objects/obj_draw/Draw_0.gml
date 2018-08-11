// Draw Instances In Grid

if (ds_exists(ds_depthgrid, ds_type_grid)) {
	var depthgrid = ds_depthgrid;
	var instnum = instance_number (obj_parent_depth);
	ds_grid_resize(depthgrid, 2, instnum);
	var yy = 0;
	
	with (obj_parent_depth) {	
		depthgrid [# 0,yy] = id;
		depthgrid [# 1,yy] = y;
		yy += 1;
	}
	ds_grid_sort(ds_depthgrid, 1, true);
	yy = 0; repeat (instnum) {
		var instanceID = ds_depthgrid [# 0, yy];
			with (instanceID) {
				draw_self();
			}
			yy+=1;
	}
	
	ds_grid_clear(ds_depthgrid,0);
}