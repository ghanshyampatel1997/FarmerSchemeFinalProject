import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import{FormsModule} from '@angular/forms'

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { FarmerCropSellRequestComponent } from './farmer-crop-sell-request/farmer-crop-sell-request.component';
import { UploadImageService } from '../shared/upload-image.service';
import { HttpClient, HttpClientModule } from '@angular/common/http';



@NgModule({
  declarations: [
    AppComponent,
    FarmerCropSellRequestComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    HttpClientModule 
  ],
providers: [UploadImageService],
  bootstrap: [AppComponent]
})
export class AppModule { }
