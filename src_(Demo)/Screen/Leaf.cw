package  {


	import GZ.Gfx.Effects.Light;
	import GZ.Gpu.ShaderModel.GzModel.GzShCommun.GzShCommun_Light;
	import GZ.Gfx.Clip;
	import GZ.Gfx.Clip.Img;
	import GZ.File.RcImg;
	import GZ.Sys.Interface.Context;
	import GZ.Gpu.ShaderModel.AtModel.Attribute_Quad;
	import GZ.Sys.Interface.Window;
	import GZ.Gfx.Shape;
	import GZ.Gfx.Face;
	import GZ.Gfx.Root;
	import GZ.Base.Math.Math;
	import GZ.Gfx.Triangle;
	import GZ.File.RcImg;
	import GZ.Base.PtA;
	import GZ.Base.Pt;
	import GZ.Base.Poly4;

	import GZ.Sys.Interface.Context;
	
	/**
	 * @author Maeiky
	 */

	public class Leaf  extends Img {

		//public var oRcLeaf : RcImg;
		//public var oLeaf : Img;
		//public var aLeaf : Array<Img>;
	//	/public var oBush : Light;
		//public var nIndex : UInt;
		public var bFlip : Bool = false;
		public var nCountDown : Int = 10;
		public var nIniPitch : Float;
			
		public function Leaf(_oParent : Root, _nX: Float, _nY:Float, _oRc : RcImg, _bCenter:Bool = true, _nCenterX:Float = 0, _nCenterY:Float = 0):Void {

			//oLeaf = new Img(this, 0, 0, oRcLeaf);
			//vColor.nAlpha = 0.5;
			
		}
		

		override public function fUpdateParentToChild():Void {
		
			if(nCountDown < 0){
				nCountDown = 100;
				if(bFlip){
					bFlip = false;
					vRot.nPitch.fTo(nIniPitch + 0.25);
				}else{
					bFlip = true;
					vRot.nPitch.fTo(nIniPitch - 0.25);
				}
			}else{
				nCountDown--;
			}
			
		//	vRot.nPitch = vRot.nPitch + 0.1;
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
