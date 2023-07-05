package com.twistedfae.model;

public class System_requirementVO {

	private int game_id;
    private String min_os;
    private String min_processor;
    private String min_memory;
    private String min_graphic;
    private String min_direct_x;
    private String min_network;
    private String min_storage;
    private String os;
    private String processor;
    private String memory;
    private String graphic;
    private String direct_x;
    private String network;
    private String storage;
    private String additional_notes;
    
	public int getGame_id() {
		return game_id;
	}
	public void setGame_id(int game_id) {
		this.game_id = game_id;
	}
	public String getMin_os() {
		return min_os;
	}
	public void setMin_os(String min_os) {
		this.min_os = min_os;
	}
	public String getMin_processor() {
		return min_processor;
	}
	public void setMin_processor(String min_processor) {
		this.min_processor = min_processor;
	}
	public String getMin_memory() {
		return min_memory;
	}
	public void setMin_memory(String min_memory) {
		this.min_memory = min_memory;
	}
	public String getMin_direct_x() {
		return min_direct_x;
	}
	public void setMin_direct_x(String min_direct_x) {
		this.min_direct_x = min_direct_x;
	}
	public String getMin_network() {
		return min_network;
	}
	public void setMin_network(String min_network) {
		this.min_network = min_network;
	}
	public String getMin_storage() {
		return min_storage;
	}
	public void setMin_storage(String min_storage) {
		this.min_storage = min_storage;
	}
	public String getOs() {
		return os;
	}
	public void setOs(String os) {
		this.os = os;
	}
	public String getProcessor() {
		return processor;
	}
	public void setProcessor(String processor) {
		this.processor = processor;
	}
	public String getMemory() {
		return memory;
	}
	public void setMemory(String memory) {
		this.memory = memory;
	}
	public String getDirect_x() {
		return direct_x;
	}
	public void setDirect_x(String direct_x) {
		this.direct_x = direct_x;
	}
	public String getNetwork() {
		return network;
	}
	public void setNetwork(String network) {
		this.network = network;
	}
	public String getStorage() {
		return storage;
	}
	public void setStorage(String storage) {
		this.storage = storage;
	}
	public String getAdditional_notes() {
		return additional_notes;
	}
	public void setAdditional_notes(String additional_notes) {
		this.additional_notes = additional_notes;
	}
	public String getMin_graphic() {
		return min_graphic;
	}
	public void setMin_graphic(String min_graphic) {
		this.min_graphic = min_graphic;
	}
	public String getGraphic() {
		return graphic;
	}
	public void setGraphic(String graphic) {
		this.graphic = graphic;
	}
	@Override
	public String toString() {
		return "System_requirementVO [game_id=" + game_id + ", min_os=" + min_os + ", min_processor=" + min_processor
				+ ", min_memory=" + min_memory + ", min_graphic=" + min_graphic + ", min_direct_x=" + min_direct_x
				+ ", min_network=" + min_network + ", min_storage=" + min_storage + ", os=" + os + ", processor="
				+ processor + ", memory=" + memory + ", graphic=" + graphic + ", direct_x=" + direct_x + ", network="
				+ network + ", storage=" + storage + ", additional_notes=" + additional_notes + "]";
	}
	
}
