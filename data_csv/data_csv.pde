ArrayList<DataObjects> dataObjects = new ArrayList();

HashMap<String, DataBin> dataLabel = new HashMap();
HashMap<Float, DataBin> dataValue = new HashMap();

ArrayList<Float> dataValNums = new ArrayList();
float maxVal = 0;

DataObjects dataob;
DataBin bin;
Table myTable;

void setup() {
  size(600, 400);
  background(255);
  noStroke();
  smooth();
  colorMode(HSB, 360, 100, 100);

  // Create a new table for all your data
  myTable = new Table(this, "data.csv");
  // Find the total number of rows
  int totalRows = myTable.getRowCount();
  // Loop through all the data
  for (int i = 0; i < myTable.getRowCount(); i++) {
    dataob = new DataObjects();
    dataob.dataLabel = myTable.getString(i, 0);
    dataob.dataValue = myTable.getFloat(i, 1);
    // Find the maximum value in all your data
    if (dataob.dataValue > maxVal) maxVal = dataob.dataValue;
    
    float x = map(i, 0, totalRows, 0, width);
    float c = map(dataob.dataValue, 0, maxVal, 0, 360);
    float h = map(dataob.dataValue, 0, maxVal, 0, height);
    float y = height - h;
    float w = width/totalRows - 2;
    
    fill(c, 100, 100);
    rect(x, y, w, h);
  }
  
}
