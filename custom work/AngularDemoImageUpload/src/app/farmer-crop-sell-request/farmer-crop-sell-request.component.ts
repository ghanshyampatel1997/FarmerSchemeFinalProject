import { Component, OnInit } from '@angular/core';
import {Route} from '@angular/router';
import { UploadImageService } from 'src/shared/upload-image.service';

@Component({
  selector: 'app-farmer-crop-sell-request',
  templateUrl: './farmer-crop-sell-request.component.html',
  styleUrls: ['./farmer-crop-sell-request.component.css'],
  providers:[UploadImageService]
})
export class FarmerCropSellRequestComponent implements OnInit {
  farmeroption=true;
  fsellrequestvalue;
  SoldcropHistoryValue;
  MarketPlaceValue;
  imageUrl: string = "/assets/img/default-image.png";
  fileToUpload: File = null;


  constructor(private imageService : UploadImageService) { }

  ngOnInit(): void {
    this.farmeroption=true;
    this.fsellrequestvalue=false;
    this.SoldcropHistoryValue=false;
    this.MarketPlaceValue=false;
  }

  sellrequest()
  {
    this.farmeroption=false;
    this.fsellrequestvalue=true;
  }
  cropHistoryrequest()
  {

  }

  MarketPlacerequest()
  {

  }

  handleFileInput(file: FileList) {
    this.fileToUpload = file.item(0);

    //Show image preview
    var reader = new FileReader();
    reader.onload = (event:any) => {
      this.imageUrl = event.target.result;
    }
    reader.readAsDataURL(this.fileToUpload);
  }

  OnSubmit(Cropetype,CropeName,Fertilizertype,Quantity,Image){
   this.imageService.postFile(Cropetype.value,CropeName.value,Fertilizertype.value,Quantity.value,this.fileToUpload).subscribe(
     data =>{
       console.log('done');
       Cropetype.value = null;
       CropeName.value = null;
       Fertilizertype.value = null;
       Quantity.value = null;
       Image.value = null;
       this.imageUrl = "/assets/img/default-image.png";
     }
   );
  }
}

