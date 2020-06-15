package  {


	import GZ.Gfx.Effects.Light;
	import GZ.Gpu.ShaderModel.GzModel.GzShCommun.GzShCommun_Light;
	import GZ.Gfx.Clip;
	import GZ.Gfx.Clip.Img;
	import GZ.File.RcImg;
	import GZ.Sys.Interface.Context;
	import GZ.Gpu.ShaderModel.AtModel.Attribute_Quad;
	import Demo.Screen.Leaf;
	
	/**
	 * @author Maeiky
	 */

	public class Bush  extends Clip {

		public var oRcLeaf : RcImg;
		public var oLeaf : Img;
		public var aLeaf : Array<Img>;
	//	public var oBush : Light;
		//public var nIndex : UInt;

		public var nSize : Float = 1.7;
				
		public function Bush():Void {
			Clip(parent, 0 , 0);
		
			oRcLeaf = new RcImg( "Exe|Rc/Leaf.png");
			oRcLeaf.fCpuLoad();
			if(Context.oItf.bGpuDraw){
				oRcLeaf.fSetGpuTexLayer(Attribute_Quad.oTexture);
				oRcLeaf.fGpuLoad();
			}
			
			
		///	oLeaf = new Img(this, 0, 0, oRcLeaf);
			
			/*
			for(var j : UInt = 0; j < 3; j++){
				for(var i : UInt = 0; i < 10; i++){
					var _oLeaf : Leaf = new Leaf(this, 0, 0, oRcLeaf, false, oRcLeaf.nWidth/2, oRcLeaf.nHeight + 5);
					_oLeaf.vSize.nWidth = 0.5;
					_oLeaf.vSize.nHeight = 0.5;
					
					_oLeaf.vRot.nRoll =  i * 2.0 + j / 1.0;
					_oLeaf.vRot.nPitch = j  * -0.5;
					_oLeaf.nIniPitch = _oLeaf.vRot.nPitch;
					
					_oLeaf.vColor.nAlpha = 0.6;
					
					aLeaf.fPush(_oLeaf);
				}
			}
		
		*/
		
		
			for(var j : UInt = 0; j < 6 ; j++){
				for(var i : UInt = 0; i < 20 * nSize ; i++){
					var _oLeaf : Leaf = new Leaf(this, 0, 0, oRcLeaf, false, oRcLeaf.nWidth/2, oRcLeaf.nHeight + 35 * nSize);
					_oLeaf.vSize.nWidth = 0.40 * nSize ;
					_oLeaf.vSize.nHeight = 0.40 * nSize;
					
					_oLeaf.vRot.nRoll =  i * 2.0 + j / 1.5;
					_oLeaf.vRot.nPitch = j  * -0.25;
					
					//_oLeaf.vColor.nRed = 0.5;
					//_oLeaf.vColor.nGreen = 0.0;
					//_oLeaf.vColor.nBlue = 0.0;
					
					_oLeaf.nIniPitch = _oLeaf.vRot.nPitch;
					
					_oLeaf.vColor.nAlpha = 0.6;
					
					aLeaf.fPush(_oLeaf);
				}
			}
		
		
			vRot.nPitch = 1.57 / 2.0;
			//Debug.fTrace("NewLight : " + nIndex);
		//	GzShCommun_Light.fSetDiffuseTranslucidity(-1.0);
		}
		

		override public function fUpdateParentToChild():Void {
		
			
		/*
			vPos.nY = vPos.nY + 3;
			if(vPos.nY > 700 + 600){ //600 = Height frame
				vPos.nY = -700;
			}
				
			GzShCommun_Light.fUpdateLight(nIndex, oLight);
			*/
		}





	}
}
