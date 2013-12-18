package cms.DTO;

import java.util.ArrayList;

public class ZipcodeDTOList {
	ArrayList<ZipcodeDTO> zListModel = null;
	
	public ArrayList<ZipcodeDTO> getzListModel(){
		return zListModel;
	}
	
	public void setzListModel (ArrayList<ZipcodeDTO> zListModel){
		this.zListModel = zListModel;
	}
}
