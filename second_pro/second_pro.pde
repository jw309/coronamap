int countries =18;        //countries numbers

PImage world; 
PImage[] countryImage = new PImage[countries];

String[] coun = {"china", "japan", "usa", "canada", "india", "russia", "korea", "singapore", "Thailand", "Taiwon", "Malaysia", "Austrailia",
"france", "germany", "uk", "spain", "sweden", "italy"};

int[] col = new int[countries];
int[] pat = {42696, 161, 13, 7, 3, 2, 28, 50, 32, 18, 18, 15, 11, 16, 8, 2, 1, 3}; //the array of the patients of the countries
void setup()
{
  size(1357, 628);
  world = loadImage("world.png");
  for(int i=0; i<countries; i++)
  {
    col[i]=255;
    countryImage[i] = loadImage(i+".png");  //load countries images
  }
  world.resize(1357,628);
}

void draw()
{

    background(world);
    tint(255, 240, 255);                        //as china has so huge amount of the patient, set the color as white as possible
    image(countryImage[0], 0, 0, 1357, 628);
    tint(210, 0, 210);                          //as japan has much more patient than other countries, set the color more whiter than other countries
    image(countryImage[1], 0, 0, 1357, 628);
    for(int i=2;i<countries; i++)
    {
      //tint(pat[i]/sum, 0, 255);
      tint(map(pat[i], 1, 50, 1, 255), 0, map(pat[i], 1, 50, 1, 255));  //color the countires as the smout of the patients
      //tint(255, 0, 255);
      image(countryImage[i], 0, 0, 1357, 628);       // more the country is dark, the less patient they have
      tint(255, 255, 255);
    }
    

}
