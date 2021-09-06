// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "BOXOPHOBIC/The Vegetation Engine/Vegetation/Bark Standard Lit"
{
	Properties
	{
		[HideInInspector] _EmissionColor("Emission Color", Color) = (1,1,1,1)
		[HideInInspector] _AlphaCutoff("Alpha Cutoff ", Range(0, 1)) = 0.5
		[StyledCategory(Render Settings, 5, 10)]_RenderingCat("[ Rendering Cat ]", Float) = 0
		[Enum(Opaque,0,Transparent,1)]_RenderMode("Render Mode", Float) = 0
		[Enum(Off,0,On,1)]_RenderZWrite("Render ZWrite", Float) = 1
		[IntRange]_RenderPriority("Render Priority", Range( -100 , 100)) = 0
		[Enum(Both,0,Back,1,Front,2)]_RenderCull("Render Faces", Float) = 0
		[Enum(Flip,0,Mirror,1,Same,2)]_RenderNormals("Render Normals", Float) = 0
		[StyledSpace(10)]_ReceiveSpace("# Receive Space", Float) = 0
		[Enum(Off,0,On,1)]_RenderSpecular("Receive Specular", Float) = 1
		[Enum(Off,0,On,1)]_RenderDecals("Receive Decals", Float) = 1
		[Enum(Off,0,On,1)]_RenderSSR("Receive SSR/SSGI", Float) = 1
		[Enum(Off,0,On,1)][Space(10)]_RenderClip("Alpha Clipping", Float) = 1
		_Cutoff("Alpha Treshold", Range( 0 , 1)) = 0.5
		[StyledSpace(10)]_FadeSpace("# Fade Space", Float) = 0
		_FadeCameraValue("Fade by Camera Distance", Range( 0 , 1)) = 1
		[StyledCategory(Global Settings)]_GlobalCat("[ Global Cat ]", Float) = 0
		[StyledEnum(Default _Layer 1 _Layer 2 _Layer 3 _Layer 4 _Layer 5 _Layer 6 _Layer 7 _Layer 8)]_LayerExtrasValue("Layer Extras", Float) = 0
		[StyledEnum(Default _Layer 1 _Layer 2 _Layer 3 _Layer 4 _Layer 5 _Layer 6 _Layer 7 _Layer 8)]_LayerMotionValue("Layer Motion", Float) = 0
		[StyledEnum(Default _Layer 1 _Layer 2 _Layer 3 _Layer 4 _Layer 5 _Layer 6 _Layer 7 _Layer 8)]_LayerReactValue("Layer React", Float) = 0
		[StyledSpace(10)]_LayersSpace("# Layers Space", Float) = 0
		[StyledMessage(Info, Procedural Variation in use. The Variation might not work as expected when switching from one LOD to another., _VertexVariationMode, 1 , 0, 10)]_VariationGlobalsMessage("# Variation Globals Message", Float) = 0
		_GlobalOverlay("Global Overlay", Range( 0 , 1)) = 1
		_GlobalWetness("Global Wetness", Range( 0 , 1)) = 1
		_GlobalSize("Global Size", Range( 0 , 1)) = 1
		[StyledRemapSlider(_ColorsMaskMinValue, _ColorsMaskMaxValue, 0, 1, 10, 0)]_ColorsMaskRemap("Colors Mask", Vector) = (0,0,0,0)
		[StyledRemapSlider(_OverlayMaskMinValue, _OverlayMaskMaxValue, 0, 1, 10, 0)]_OverlayMaskRemap("Overlay Mask", Vector) = (0,0,0,0)
		[HideInInspector]_OverlayMaskMinValue("Overlay Mask Min Value", Range( 0 , 1)) = 0.45
		[HideInInspector]_OverlayMaskMaxValue("Overlay Mask Max Value", Range( 0 , 1)) = 0.55
		_OverlayBottomValue("Overlay Bottom", Range( 0 , 1)) = 0.5
		[StyledCategory(Main Settings)]_MainCat("[ Main Cat ]", Float) = 0
		[NoScaleOffset][StyledTextureSingleLine]_MainAlbedoTex("Main Albedo", 2D) = "white" {}
		[NoScaleOffset][StyledTextureSingleLine]_MainNormalTex("Main Normal", 2D) = "bump" {}
		[NoScaleOffset][StyledTextureSingleLine]_MainMaskTex("Main Mask", 2D) = "white" {}
		[Space(10)][StyledVector(9)]_MainUVs("Main UVs", Vector) = (1,1,0,0)
		[HDR]_MainColor("Main Color", Color) = (1,1,1,1)
		_MainNormalValue("Main Normal", Range( -8 , 8)) = 1
		_MainOcclusionValue("Main Occlusion", Range( 0 , 1)) = 1
		_MainSmoothnessValue("Main Smoothness", Range( 0 , 1)) = 1
		[StyledCategory(Detail Settings)]_DetailCat("[ Detail Cat ]", Float) = 0
		[Enum(Off,0,On,1)]_DetailMode("Detail Mode", Float) = 0
		[Enum(Overlay,0,Replace,1)]_DetailBlendMode("Detail Blend", Float) = 1
		[Enum(Vertex Blue,0,Projection,1)]_DetailTypeMode("Detail Type", Float) = 0
		[StyledSpace(10)]_DetailSpace("# Detail Space", Float) = 0
		[NoScaleOffset][Space(10)][StyledTextureSingleLine]_SecondAlbedoTex("Detail Albedo", 2D) = "white" {}
		[NoScaleOffset][StyledTextureSingleLine]_SecondNormalTex("Detail Normal", 2D) = "bump" {}
		[NoScaleOffset][StyledTextureSingleLine]_SecondMaskTex("Detail Mask", 2D) = "white" {}
		[Space(10)][StyledVector(9)]_SecondUVs("Detail UVs", Vector) = (1,1,0,0)
		[HDR]_SecondColor("Detail Color", Color) = (1,1,1,1)
		_SecondNormalValue("Detail Normal", Range( -8 , 8)) = 1
		_SecondOcclusionValue("Detail Occlusion", Range( 0 , 1)) = 1
		_SecondSmoothnessValue("Detail Smoothness", Range( 0 , 1)) = 1
		[Space(10)]_DetailNormalValue("Detail Use Main Normal", Range( 0 , 1)) = 0.5
		[Enum(Main Mask,0,Detail Mask,1)][Space(10)]_DetailMaskMode("Detail Mask Source", Float) = 0
		[Enum(Off,0,On,1)]_DetailMaskInvertMode("Detail Mask Invert", Float) = 0
		_DetailMeshValue("Detail Mask Offset", Range( -1 , 1)) = 0
		[StyledRemapSlider(_DetailBlendMinValue, _DetailBlendMaxValue,0,1)]_DetailBlendRemap("Detail Blending", Vector) = (0,0,0,0)
		[HideInInspector]_DetailBlendMinValue("Detail Blend Min Value", Range( 0 , 1)) = 0.2
		[HideInInspector]_DetailBlendMaxValue("Detail Blend Max Value", Range( 0 , 1)) = 0.3
		[StyledCategory(Occlusion Settings)]_OcclusionCat("[ Occlusion Cat ]", Float) = 0
		[HDR]_VertexOcclusionColor("Vertex Occlusion Color", Color) = (1,1,1,1)
		[StyledRemapSlider(_VertexOcclusionMinValue, _VertexOcclusionMaxValue, 0, 1)]_VertexOcclusionRemap("Vertex Occlusion Mask", Vector) = (0,0,0,0)
		[HideInInspector]_VertexOcclusionMinValue("Vertex Occlusion Min Value", Range( 0 , 1)) = 0
		[HideInInspector]_VertexOcclusionMaxValue("Vertex Occlusion Max Value", Range( 0 , 1)) = 1
		[StyledCategory(Subsurface Settings)]_SubsurfaceCat("[ Subsurface Cat ]", Float) = 0
		[StyledRemapSlider(_SubsurfaceMaskMinValue, _SubsurfaceMaskMaxValue,0,1)]_SubsurfaceMaskRemap("Subsurface Mask", Vector) = (0,0,0,0)
		[Space(10)][DiffusionProfile]_SubsurfaceDiffusion("Subsurface Diffusion", Float) = 0
		[HideInInspector]_SubsurfaceDiffusion_Asset("Subsurface Diffusion", Vector) = (0,0,0,0)
		[HideInInspector][Space(10)][ASEDiffusionProfile(_SubsurfaceDiffusion)]_SubsurfaceDiffusion_asset("Subsurface Diffusion", Vector) = (0,0,0,0)
		[Space(10)]_TranslucencyIntensityValue("Translucency Intensity", Range( 0 , 50)) = 1
		_TranslucencyNormalValue("Translucency Normal", Range( 0 , 1)) = 0.1
		_TranslucencyScatteringValue("Translucency Scattering", Range( 1 , 50)) = 2
		_TranslucencyDirectValue("Translucency Direct", Range( 0 , 1)) = 1
		_TranslucencyAmbientValue("Translucency Ambient", Range( 0 , 1)) = 0.2
		_TranslucencyShadowValue("Translucency Shadow", Range( 0 , 1)) = 1
		[StyledMessage(Warning,  Translucency is not supported in HDRP. Diffusion Profiles will be used instead., 10, 5)]_TranslucencyHDMessage("# Translucency HD Message", Float) = 0
		[StyledCategory(Gradient Settings)]_GradientCat("[ Gradient Cat ]", Float) = 0
		[StyledRemapSlider(_GradientMinValue, _GradientMaxValue, 0, 1)]_GradientMaskRemap("Gradient Mask", Vector) = (0,0,0,0)
		[StyledCategory(Noise Settings)]_NoiseCat("[ Noise Cat ]", Float) = 0
		[StyledRemapSlider(_NoiseMinValue, _NoiseMaxValue, 0, 1)]_NoiseMaskRemap("Noise Mask", Vector) = (0,0,0,0)
		[StyledCategory(Emissive Settings)]_EmissiveCat("[ Emissive Cat]", Float) = 0
		[NoScaleOffset][StyledTextureSingleLine]_EmissiveTex("Emissive Texture", 2D) = "white" {}
		[Space(10)][StyledVector(9)]_EmissiveUVs("Emissive UVs", Vector) = (1,1,0,0)
		[Enum(None,0,Any,10,Baked,20,Realtime,30)]_EmissiveFlagMode("Emissive Baking", Float) = 0
		[HDR]_EmissiveColor("Emissive Color", Color) = (0,0,0,0)
		[StyledEmissiveIntensity]_EmissiveIntensityParams("Emissive Intensity", Vector) = (1,1,1,0)
		_EmissiveExposureValue("Emissive Weight", Range( 0 , 1)) = 1
		[StyledCategory(Perspective Settings)]_PerspectiveCat("[ Perspective Cat ]", Float) = 0
		[StyledCategory(Size Fade Settings)]_SizeFadeCat("[ Size Fade Cat ]", Float) = 0
		[StyledMessage(Info, The Size Fade feature is recommended to be used to fade out vegetation at a distance in combination with the LOD Groups or with a 3rd party culling system., _SizeFadeMode, 1, 0, 10)]_SizeFadeMessage("# Size Fade Message", Float) = 0
		[StyledCategory(Motion Settings)]_MotionCat("[ Motion Cat ]", Float) = 0
		[StyledMessage(Info, Procedural variation in use. Use the Scale settings if the Variation is breaking the bending and rolling animation., _VertexVariationMode, 1 , 0, 10)]_VariationMotionMessage("# Variation Motion Message", Float) = 0
		[StyledSpace(10)]_MotionSpace("# Motion Space", Float) = 0
		_MotionAmplitude_10("Bending Amplitude", Range( 0 , 2)) = 0.05
		[IntRange]_MotionSpeed_10("Bending Speed", Range( 0 , 60)) = 2
		_MotionScale_10("Bending Scale", Range( 0 , 20)) = 0
		_MotionVariation_10("Bending Variation", Range( 0 , 20)) = 0
		[Space(10)]_MotionAmplitude_20("Rolling Amplitude", Range( 0 , 2)) = 0.1
		[IntRange]_MotionSpeed_20("Rolling Speed", Range( 0 , 60)) = 6
		_MotionScale_20("Rolling Scale", Range( 0 , 60)) = 0
		_MotionVariation_20("Rolling Variation", Range( 0 , 60)) = 5
		[Space(10)]_InteractionAmplitude("Interaction Amplitude", Range( 0 , 10)) = 1
		[ASEEnd]_InteractionVariation("Interaction Variation", Range( 0 , 1)) = 0
		[HideInInspector]_VertexRollingMode("Enable Motion Rolling", Float) = 1
		[HideInInspector][StyledToggle]_VertexDataMode("Enable Batching Support", Float) = 0
		[HideInInspector]_IsTVEShader("_IsTVEShader", Float) = 1
		[HideInInspector]_IsVersion("_IsVersion", Float) = 400
		[HideInInspector]_Color("Legacy Color", Color) = (0,0,0,0)
		[HideInInspector]_MainTex("Legacy MainTex", 2D) = "white" {}
		[HideInInspector]_BumpMap("Legacy BumpMap", 2D) = "white" {}
		[HideInInspector]_render_normals_options("_render_normals_options", Vector) = (1,1,1,0)
		[HideInInspector]_vertex_pivot_mode("_vertex_pivot_mode", Float) = 0
		[HideInInspector]_MaxBoundsInfo("_MaxBoundsInfo", Vector) = (1,1,1,1)
		[HideInInspector]_VertexVariationMode("_VertexVariationMode", Float) = 0
		[HideInInspector]_VertexMasksMode("_VertexMasksMode", Float) = 0
		[HideInInspector]_IsBarkShader("_IsBarkShader", Float) = 1
		[HideInInspector]_IsStandardShader("_IsStandardShader", Float) = 1
		[HideInInspector]_render_cull("_render_cull", Float) = 0
		[HideInInspector]_render_src("_render_src", Float) = 1
		[HideInInspector]_render_dst("_render_dst", Float) = 0
		[HideInInspector]_render_zw("_render_zw", Float) = 1

		[HideInInspector] _RenderQueueType("Render Queue Type", Float) = 1
		[HideInInspector] [ToggleUI] _AddPrecomputedVelocity("Add Precomputed Velocity", Float) = 1
		[HideInInspector] [ToggleUI]_SupportDecals("Boolean", Float) = 1
		[HideInInspector] _StencilRef("Stencil Ref", Int) = 0
		[HideInInspector] _StencilWriteMask("Stencil Write Mask", Int) = 6
		[HideInInspector] _StencilRefDepth("Stencil Ref Depth", Int) = 8
		[HideInInspector] _StencilWriteMaskDepth("Stencil Write Mask Depth", Int) = 8
		[HideInInspector] _StencilRefMV("Stencil Ref MV", Int) = 40
		[HideInInspector] _StencilWriteMaskMV("Stencil Write Mask MV", Int) = 40
		[HideInInspector] _StencilRefDistortionVec("Stencil Ref Distortion Vec", Int) = 4
		[HideInInspector] _StencilWriteMaskDistortionVec("Stencil Write Mask Distortion Vec", Int) = 4
		[HideInInspector] _StencilWriteMaskGBuffer("Stencil Write Mask GBuffer", Int) = 14
		[HideInInspector] _StencilRefGBuffer("Stencil Ref GBuffer", Int) = 10
		[HideInInspector] _ZTestGBuffer("ZTest GBuffer", Int) = 4
		[HideInInspector] [ToggleUI] _RequireSplitLighting("Require Split Lighting", Float) = 0
		[HideInInspector] [ToggleUI] _ReceivesSSR("Receives SSR", Float) = 1
		[HideInInspector] [ToggleUI] _ReceivesSSRTransparent("Boolean", Float) = 0
		[HideInInspector] _SurfaceType("Surface Type", Float) = 0
		[HideInInspector] _BlendMode("Blend Mode", Float) = 0
		[HideInInspector] _SrcBlend("Src Blend", Float) = 1
		[HideInInspector] _DstBlend("Dst Blend", Float) = 0
		[HideInInspector] _AlphaSrcBlend("Alpha Src Blend", Float) = 1
		[HideInInspector] _AlphaDstBlend("Alpha Dst Blend", Float) = 0
		[HideInInspector] [ToggleUI] _ZWrite("ZWrite", Float) = 1
		[HideInInspector] [ToggleUI] _TransparentZWrite("Transparent ZWrite", Float) = 1
		[HideInInspector] _CullMode("Cull Mode", Float) = 2
		[HideInInspector] _TransparentSortPriority("Transparent Sort Priority", Int) = 0
		[HideInInspector] [ToggleUI] _EnableFogOnTransparent("Enable Fog On Transparent", Float) = 1
		[HideInInspector] _CullModeForward("Cull Mode Forward", Float) = 2
		[HideInInspector] [Enum(Front, 1, Back, 2)] _TransparentCullMode("Transparent Cull Mode", Float) = 2
		[HideInInspector] _ZTestDepthEqualForOpaque("ZTest Depth Equal For Opaque", Int) = 4
		[HideInInspector] [Enum(UnityEngine.Rendering.CompareFunction)] _ZTestTransparent("ZTest Transparent", Float) = 4
		[HideInInspector] [ToggleUI] _TransparentBackfaceEnable("Transparent Backface Enable", Float) = 0
		[HideInInspector] [ToggleUI] _AlphaCutoffEnable("Alpha Cutoff Enable", Float) = 0
		[HideInInspector] [ToggleUI] _UseShadowThreshold("Use Shadow Threshold", Float) = 0
		[HideInInspector] [ToggleUI] _DoubleSidedEnable("Double Sided Enable", Float) = 1
		[HideInInspector] [Enum(Flip, 0, Mirror, 1, None, 2)] _DoubleSidedNormalMode("Double Sided Normal Mode", Float) = 2
		[HideInInspector] _DoubleSidedConstants("DoubleSidedConstants", Vector) = (1,1,-1,0)
		//_TessPhongStrength( "Tess Phong Strength", Range( 0, 1 ) ) = 0.5
		//_TessValue( "Tess Max Tessellation", Range( 1, 32 ) ) = 16
		//_TessMin( "Tess Min Distance", Float ) = 10
		//_TessMax( "Tess Max Distance", Float ) = 25
		//_TessEdgeLength ( "Tess Edge length", Range( 2, 50 ) ) = 16
		//_TessMaxDisp( "Tess Max Displacement", Float ) = 25
	}

	SubShader
	{
		LOD 0

		

		Tags { "RenderPipeline"="HDRenderPipeline" "RenderType"="Opaque" "Queue"="Geometry" }

		HLSLINCLUDE
		#pragma target 4.5
		#pragma only_renderers d3d11 playstation xboxone xboxseries vulkan metal switch
		#pragma multi_compile_instancing
		#pragma instancing_options renderinglayer

		struct GlobalSurfaceDescription // GBuffer Forward META TransparentBackface
		{
			float3 Albedo;
			float3 Normal;
			float3 BentNormal;
			float3 Specular;
			float CoatMask;
			float Metallic;
			float3 Emission;
			float Smoothness;
			float Occlusion;
			float Alpha;
			float AlphaClipThreshold;
			float AlphaClipThresholdShadow;
			float AlphaClipThresholdDepthPrepass;
			float AlphaClipThresholdDepthPostpass;
			float SpecularAAScreenSpaceVariance;
			float SpecularAAThreshold;
			float SpecularOcclusion;
			float DepthOffset;
			//Refraction
			float RefractionIndex;
			float3 RefractionColor;
			float RefractionDistance;
			//SSS/Translucent
			float Thickness;
			float SubsurfaceMask;
			float DiffusionProfile;
			//Anisotropy
			float Anisotropy;
			float3 Tangent;
			//Iridescent
			float IridescenceMask;
			float IridescenceThickness;
			//BakedGI
			float3 BakedGI;
			float3 BakedBackGI;
		};

		struct AlphaSurfaceDescription // ShadowCaster
		{
			float Alpha;
			float AlphaClipThreshold;
			float AlphaClipThresholdShadow;
			float DepthOffset;
		};

		struct SceneSurfaceDescription // SceneSelection
		{
			float Alpha;
			float AlphaClipThreshold;
			float DepthOffset;
		};

		struct PrePassSurfaceDescription // DepthPrePass
		{
			float3 Normal;
			float Smoothness;
			float Alpha;
			float AlphaClipThresholdDepthPrepass;
			float DepthOffset;
		};

		struct PostPassSurfaceDescription //DepthPostPass
		{
			float Alpha;
			float AlphaClipThresholdDepthPostpass;
			float DepthOffset;
		};

		struct SmoothSurfaceDescription // MotionVectors DepthOnly
		{
			float3 Normal;
			float Smoothness;
			float Alpha;
			float AlphaClipThreshold;
			float DepthOffset;
		};

		struct DistortionSurfaceDescription //Distortion
		{
			float Alpha;
			float2 Distortion;
			float DistortionBlur;
			float AlphaClipThreshold;
		};
		
		#ifndef ASE_TESS_FUNCS
		#define ASE_TESS_FUNCS
		float4 FixedTess( float tessValue )
		{
			return tessValue;
		}
		
		float CalcDistanceTessFactor (float4 vertex, float minDist, float maxDist, float tess, float4x4 o2w, float3 cameraPos )
		{
			float3 wpos = mul(o2w,vertex).xyz;
			float dist = distance (wpos, cameraPos);
			float f = clamp(1.0 - (dist - minDist) / (maxDist - minDist), 0.01, 1.0) * tess;
			return f;
		}

		float4 CalcTriEdgeTessFactors (float3 triVertexFactors)
		{
			float4 tess;
			tess.x = 0.5 * (triVertexFactors.y + triVertexFactors.z);
			tess.y = 0.5 * (triVertexFactors.x + triVertexFactors.z);
			tess.z = 0.5 * (triVertexFactors.x + triVertexFactors.y);
			tess.w = (triVertexFactors.x + triVertexFactors.y + triVertexFactors.z) / 3.0f;
			return tess;
		}

		float CalcEdgeTessFactor (float3 wpos0, float3 wpos1, float edgeLen, float3 cameraPos, float4 scParams )
		{
			float dist = distance (0.5 * (wpos0+wpos1), cameraPos);
			float len = distance(wpos0, wpos1);
			float f = max(len * scParams.y / (edgeLen * dist), 1.0);
			return f;
		}

		float DistanceFromPlaneASE (float3 pos, float4 plane)
		{
			return dot (float4(pos,1.0f), plane);
		}

		bool WorldViewFrustumCull (float3 wpos0, float3 wpos1, float3 wpos2, float cullEps, float4 planes[6] )
		{
			float4 planeTest;
			planeTest.x = (( DistanceFromPlaneASE(wpos0, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos1, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos2, planes[0]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.y = (( DistanceFromPlaneASE(wpos0, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos1, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos2, planes[1]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.z = (( DistanceFromPlaneASE(wpos0, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos1, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos2, planes[2]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.w = (( DistanceFromPlaneASE(wpos0, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos1, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos2, planes[3]) > -cullEps) ? 1.0f : 0.0f );
			return !all (planeTest);
		}

		float4 DistanceBasedTess( float4 v0, float4 v1, float4 v2, float tess, float minDist, float maxDist, float4x4 o2w, float3 cameraPos )
		{
			float3 f;
			f.x = CalcDistanceTessFactor (v0,minDist,maxDist,tess,o2w,cameraPos);
			f.y = CalcDistanceTessFactor (v1,minDist,maxDist,tess,o2w,cameraPos);
			f.z = CalcDistanceTessFactor (v2,minDist,maxDist,tess,o2w,cameraPos);

			return CalcTriEdgeTessFactors (f);
		}

		float4 EdgeLengthBasedTess( float4 v0, float4 v1, float4 v2, float edgeLength, float4x4 o2w, float3 cameraPos, float4 scParams )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;
			tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
			tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
			tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
			tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			return tess;
		}

		float4 EdgeLengthBasedTessCull( float4 v0, float4 v1, float4 v2, float edgeLength, float maxDisplacement, float4x4 o2w, float3 cameraPos, float4 scParams, float4 planes[6] )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;

			if (WorldViewFrustumCull(pos0, pos1, pos2, maxDisplacement, planes))
			{
				tess = 0.0f;
			}
			else
			{
				tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
				tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
				tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
				tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			}
			return tess;
		}
		#endif //ASE_TESS_FUNCS
		ENDHLSL
		
		Pass
		{
			
			Name "GBuffer"
			Tags { "LightMode"="GBuffer" }

			Cull [_CullMode]
			ZTest [_ZTestGBuffer]

			Stencil
			{
				Ref [_StencilRefGBuffer]
				WriteMask [_StencilWriteMaskGBuffer]
				Comp Always
				Pass Replace
				Fail Keep
				ZFail Keep
			}


			HLSLPROGRAM

			#define ASE_NEED_CULLFACE 1
			#define _MATERIAL_FEATURE_SPECULAR_COLOR 1
			#define _ENERGY_CONSERVING_SPECULAR 1
			#pragma multi_compile _ DOTS_INSTANCING_ON
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define _AMBIENT_OCCLUSION 1
			#define HAVE_MESH_MODIFICATION
			#define ASE_SRP_VERSION 100202
			#if !defined(ASE_NEED_CULLFACE)
			#define ASE_NEED_CULLFACE 1
			#endif //ASE_NEED_CULLFACE
			#define ASE_USING_SAMPLING_MACROS 1


			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT
			#pragma shader_feature_local _DOUBLESIDED_ON
			#pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
			#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT
			#pragma shader_feature_local _ALPHATEST_ON

			#if !defined(DEBUG_DISPLAY) && defined(_ALPHATEST_ON)
			#define SHADERPASS_GBUFFER_BYPASS_ALPHA_TEST
			#endif

			#define SHADERPASS SHADERPASS_GBUFFER
			#pragma multi_compile _ DEBUG_DISPLAY
			#pragma multi_compile _ LIGHTMAP_ON
			#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			#pragma multi_compile _ DYNAMICLIGHTMAP_ON
			#pragma multi_compile _ SHADOWS_SHADOWMASK
			#pragma multi_compile DECALS_OFF DECALS_3RT DECALS_4RT
			#pragma multi_compile _ LIGHT_LAYERS

			#pragma vertex Vert
			#pragma fragment Frag

			//#define UNITY_MATERIAL_LIT

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#ifdef DEBUG_DISPLAY
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#endif

			CBUFFER_START( UnityPerMaterial )
			half4 _DetailBlendRemap;
			half4 _OverlayMaskRemap;
			float4 _NoiseMaskRemap;
			half4 _SubsurfaceMaskRemap;
			half4 _VertexOcclusionRemap;
			float4 _MaxBoundsInfo;
			float4 _SubsurfaceDiffusion_asset;
			half4 _MainColor;
			half4 _MainUVs;
			half4 _SecondColor;
			float4 _GradientMaskRemap;
			float4 _SubsurfaceDiffusion_Asset;
			float4 _Color;
			half4 _VertexOcclusionColor;
			half4 _SecondUVs;
			half4 _ColorsMaskRemap;
			float4 _EmissiveIntensityParams;
			half4 _EmissiveColor;
			half4 _EmissiveUVs;
			half3 _render_normals_options;
			half _MotionVariation_10;
			float _MotionSpeed_10;
			half _MotionAmplitude_10;
			half _MotionScale_20;
			half _MotionVariation_20;
			half _MotionSpeed_20;
			half _VertexRollingMode;
			half _LayerMotionValue;
			half _vertex_pivot_mode;
			half _MotionAmplitude_20;
			half _render_src;
			half _IsStandardShader;
			half _MainSmoothnessValue;
			half _SecondSmoothnessValue;
			half _GlobalWetness;
			half _MainOcclusionValue;
			float _MotionScale_10;
			half _InteractionAmplitude;
			half _EmissiveExposureValue;
			half _VertexOcclusionMinValue;
			half _OverlayMaskMaxValue;
			half _OverlayMaskMinValue;
			half _SecondNormalValue;
			half _LayerExtrasValue;
			half _GlobalOverlay;
			half _DetailNormalValue;
			half _MainNormalValue;
			half _OverlayBottomValue;
			half _DetailBlendMaxValue;
			half _DetailBlendMinValue;
			half _DetailMaskInvertMode;
			half _DetailMaskMode;
			half _DetailMeshValue;
			half _RenderSpecular;
			half _GlobalSize;
			half _VertexDataMode;
			half _InteractionVariation;
			half _LayerReactValue;
			half _VertexOcclusionMaxValue;
			half _render_zw;
			half _IsVersion;
			half _RenderNormals;
			half _VariationMotionMessage;
			half _RenderClip;
			half _Cutoff;
			half _MotionSpace;
			half _GradientCat;
			half _VertexVariationMode;
			half _RenderDecals;
			half _TranslucencyDirectValue;
			half _NoiseCat;
			half _SubsurfaceCat;
			half _LayersSpace;
			half _RenderZWrite;
			half _DetailMode;
			half _EmissiveCat;
			half _RenderMode;
			half _RenderSSR;
			half _SizeFadeCat;
			half _render_dst;
			half _render_cull;
			half _IsBarkShader;
			half _TranslucencyIntensityValue;
			half _TranslucencyNormalValue;
			half _FadeSpace;
			half _DetailSpace;
			half _TranslucencyShadowValue;
			half _EmissiveFlagMode;
			half _TranslucencyHDMessage;
			half _OcclusionCat;
			half _RenderPriority;
			half _TranslucencyAmbientValue;
			half _DetailCat;
			half _VertexMasksMode;
			half _SizeFadeMessage;
			half _MainCat;
			half _SecondOcclusionValue;
			half _ReceiveSpace;
			half _PerspectiveCat;
			half _VariationGlobalsMessage;
			float _SubsurfaceDiffusion;
			half _RenderingCat;
			half _DetailBlendMode;
			half _TranslucencyScatteringValue;
			half _IsTVEShader;
			half _GlobalCat;
			half _RenderCull;
			half _DetailTypeMode;
			half _MotionCat;
			half _FadeCameraValue;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			TEXTURE2D(_MainTex);
			SAMPLER(sampler_MainTex);
			TEXTURE2D(_BumpMap);
			SAMPLER(sampler_BumpMap);
			half4 TVE_MotionParams;
			TEXTURE2D_ARRAY(TVE_MotionTex);
			half4 TVE_MotionCoord;
			SAMPLER(samplerTVE_MotionTex);
			float TVE_MotionUsage[9];
			TEXTURE2D(TVE_NoiseTex);
			float2 TVE_NoiseSpeed_Vegetation;
			float2 TVE_NoiseSpeed_Grass;
			half TVE_NoiseSize_Vegetation;
			half TVE_NoiseSize_Grass;
			SAMPLER(samplerTVE_NoiseTex);
			half4 TVE_ReactParams;
			TEXTURE2D_ARRAY(TVE_ReactTex);
			half4 TVE_ReactCoord;
			SAMPLER(samplerTVE_ReactTex);
			float TVE_ReactUsage[9];
			TEXTURE2D(_MainAlbedoTex);
			SAMPLER(sampler_MainAlbedoTex);
			TEXTURE2D(_SecondAlbedoTex);
			TEXTURE2D(_SecondMaskTex);
			SAMPLER(sampler_SecondMaskTex);
			TEXTURE2D(_MainMaskTex);
			half4 TVE_OverlayColor;
			TEXTURE2D(_MainNormalTex);
			half4 TVE_ExtrasParams;
			TEXTURE2D_ARRAY(TVE_ExtrasTex);
			half4 TVE_ExtrasCoord;
			SAMPLER(samplerTVE_ExtrasTex);
			float TVE_ExtrasUsage[9];
			TEXTURE2D(_SecondNormalTex);
			TEXTURE2D(_EmissiveTex);
			SAMPLER(sampler_EmissiveTex);
			half TVE_EmissiveValue;
			half TVE_OverlaySmoothness;
			half TVE_CameraFadeStart;
			half TVE_CameraFadeEnd;
			TEXTURE3D(TVE_ScreenTex3D);
			half TVE_ScreenTexCoord;
			SAMPLER(samplerTVE_ScreenTex3D);


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_FRAG_VFACE
			#pragma shader_feature_local TVE_ALPHA_CLIP
			#pragma shader_feature_local TVE_VERTEX_DATA_BATCHED
			#pragma shader_feature_local TVE_DETAIL_MODE_OFF TVE_DETAIL_MODE_ON
			#pragma shader_feature_local TVE_DETAIL_BLEND_OVERLAY TVE_DETAIL_BLEND_REPLACE
			//TVE Injection Defines
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			//TVE Pipeline Defines
			#define THE_VEGETATION_ENGINE
			#define IS_HD_PIPELINE
			//TVE HD Pipeline Defines
			#pragma shader_feature_local _DISABLE_DECALS
			#pragma shader_feature_local _DISABLE_SSR
			//TVE Shader Type Defines
			#define TVE_IS_VEGETATION_SHADER


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
				#define ASE_NEED_CULLFACE 1
			#endif

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 interp00 : TEXCOORD0;
				float3 interp01 : TEXCOORD1;
				float4 interp02 : TEXCOORD2;
				float4 interp03 : TEXCOORD3;
				float4 interp04 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				float4 ase_texcoord7 : TEXCOORD7;
				float4 ase_color : COLOR;
				float4 ase_texcoord8 : TEXCOORD8;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};


			float3 ObjectPosition_UNITY_MATRIX_M(  )
			{
				return float3(UNITY_MATRIX_M[0].w, UNITY_MATRIX_M[1].w, UNITY_MATRIX_M[2].w );
			}
			
			float3 ASEGetEmissionHDRColor(float3 ldrColor, float luminanceIntensity, float exposureWeight, float inverseCurrentExposureMultiplier)
			{
				float3 hdrColor = ldrColor * luminanceIntensity;
				hdrColor = lerp( hdrColor* inverseCurrentExposureMultiplier, hdrColor, exposureWeight);
				return hdrColor;
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout GlobalSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// surface data
				surfaceData.baseColor =					surfaceDescription.Albedo;
				surfaceData.perceptualSmoothness =		surfaceDescription.Smoothness;
				surfaceData.ambientOcclusion =			surfaceDescription.Occlusion;
				surfaceData.metallic =					surfaceDescription.Metallic;
				surfaceData.coatMask =					surfaceDescription.CoatMask;

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceData.specularOcclusion =			surfaceDescription.SpecularOcclusion;
				#endif
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.subsurfaceMask =			surfaceDescription.SubsurfaceMask;
				#endif
				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceData.thickness =					surfaceDescription.Thickness;
				#endif
				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceData.diffusionProfileHash =		asuint(surfaceDescription.DiffusionProfile);
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.specularColor =				surfaceDescription.Specular;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.anisotropy =				surfaceDescription.Anisotropy;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.iridescenceMask =			surfaceDescription.IridescenceMask;
				surfaceData.iridescenceThickness =		surfaceDescription.IridescenceThickness;
				#endif

				// refraction
				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.ior = surfaceDescription.RefractionIndex;
					surfaceData.transmittanceColor = surfaceDescription.RefractionColor;
					surfaceData.atDistance = surfaceDescription.RefractionDistance;

					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif


				// material features
				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				#endif
				#ifdef ASE_LIT_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				// others
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				// normals
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				normalTS = surfaceDescription.Normal;
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );

				// decals
				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs.tangentToWorld[2], surfaceDescription.Alpha);
					ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
				}
				#endif

				bentNormalWS = surfaceData.normalWS;

				#ifdef ASE_BENT_NORMAL
				GetNormalWS( fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants );
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.tangentWS = TransformTangentToWorld( surfaceDescription.Tangent, fragInputs.tangentToWorld );
				#endif
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );


				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#endif

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceData.perceptualSmoothness = GeometricNormalFiltering( surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[ 2 ], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold );
				#endif

				// debug
				#if defined(DEBUG_DISPLAY)
				if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				{
					surfaceData.metallic = 0;
				}
				ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif
			}

			void GetSurfaceAndBuiltinData(GlobalSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				ApplyDoubleSidedFlipOrMirror( fragInputs, doubleSidedConstants );

				#ifdef _ALPHATEST_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS );

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				#ifdef _ASE_BAKEDGI
				builtinData.bakeDiffuseLighting = surfaceDescription.BakedGI;
				#endif
				#ifdef _ASE_BAKEDBACKGI
				builtinData.backBakeDiffuseLighting = surfaceDescription.BakedBackGI;
				#endif

				builtinData.emissiveColor = surfaceDescription.Emission;

				#if (SHADERPASS == SHADERPASS_DISTORTION)
				builtinData.distortion = surfaceDescription.Distortion;
				builtinData.distortionBlur = surfaceDescription.DistortionBlur;
				#else
				builtinData.distortion = float2(0.0, 0.0);
				builtinData.distortionBlur = 0.0;
				#endif

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				float3 PositionOS3588_g50723 = inputMesh.positionOS;
				half3 _Vector1 = half3(0,0,0);
				half3 Mesh_PivotsOS2291_g50723 = _Vector1;
				float3 temp_output_2283_0_g50723 = ( PositionOS3588_g50723 - Mesh_PivotsOS2291_g50723 );
				half3 VertexPos40_g51512 = temp_output_2283_0_g50723;
				float3 appendResult74_g51512 = (float3(0.0 , VertexPos40_g51512.y , 0.0));
				float3 VertexPosRotationAxis50_g51512 = appendResult74_g51512;
				float3 break84_g51512 = VertexPos40_g51512;
				float3 appendResult81_g51512 = (float3(break84_g51512.x , 0.0 , break84_g51512.z));
				float3 VertexPosOtherAxis82_g51512 = appendResult81_g51512;
				float ObjectData20_g51480 = 3.14;
				float Bounds_Radius121_g50723 = _MaxBoundsInfo.x;
				float WorldData19_g51480 = Bounds_Radius121_g50723;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g51480 = WorldData19_g51480;
				#else
				float staticSwitch14_g51480 = ObjectData20_g51480;
				#endif
				float Motion_Max_Rolling1137_g50723 = staticSwitch14_g51480;
				float3 localObjectPosition_UNITY_MATRIX_M14_g51483 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g51484 = localObjectPosition_UNITY_MATRIX_M14_g51483;
				float3 appendResult93_g51483 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				float3 temp_output_91_0_g51483 = ( appendResult93_g51483 * _vertex_pivot_mode );
				float3 PivotsOnly105_g51483 = (mul( GetObjectToWorldMatrix(), float4( temp_output_91_0_g51483 , 0.0 ) ).xyz).xyz;
				half3 On20_g51484 = ( localObjectPosition_UNITY_MATRIX_M14_g51483 + PivotsOnly105_g51483 );
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g51484 = On20_g51484;
				#else
				float3 staticSwitch14_g51484 = Off19_g51484;
				#endif
				half3 ObjectData20_g51485 = staticSwitch14_g51484;
				half3 WorldData19_g51485 = Off19_g51484;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51485 = WorldData19_g51485;
				#else
				float3 staticSwitch14_g51485 = ObjectData20_g51485;
				#endif
				float3 temp_output_66_0_g51483 = staticSwitch14_g51485;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g51483 = ( temp_output_66_0_g51483 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g51483 = temp_output_66_0_g51483;
				#endif
				half3 ObjectData20_g51482 = staticSwitch13_g51483;
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.positionOS).xyz ) );
				half3 WorldData19_g51482 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51482 = WorldData19_g51482;
				#else
				float3 staticSwitch14_g51482 = ObjectData20_g51482;
				#endif
				float3 Position83_g51481 = staticSwitch14_g51482;
				float temp_output_84_0_g51481 = _LayerMotionValue;
				float4 lerpResult87_g51481 = lerp( TVE_MotionParams , SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_MotionTex, samplerTVE_MotionTex, ( (TVE_MotionCoord).zw + ( (TVE_MotionCoord).xy * (Position83_g51481).xz ) ),temp_output_84_0_g51481, 0.0 ) , TVE_MotionUsage[(int)temp_output_84_0_g51481]);
				half4 Global_Motion_Params3909_g50723 = lerpResult87_g51481;
				float4 break322_g51421 = Global_Motion_Params3909_g50723;
				half Wind_Power369_g51421 = break322_g51421.z;
				float lerpResult410_g51421 = lerp( 0.2 , 1.0 , Wind_Power369_g51421);
				half Wind_Power_203109_g50723 = lerpResult410_g51421;
				half Mesh_Motion_260_g50723 = inputMesh.ase_texcoord3.y;
				#ifdef TVE_IS_GRASS_SHADER
				float2 staticSwitch160_g51439 = TVE_NoiseSpeed_Grass;
				#else
				float2 staticSwitch160_g51439 = TVE_NoiseSpeed_Vegetation;
				#endif
				float3 localObjectPosition_UNITY_MATRIX_M14_g51441 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g51442 = localObjectPosition_UNITY_MATRIX_M14_g51441;
				float3 appendResult93_g51441 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				float3 temp_output_91_0_g51441 = ( appendResult93_g51441 * _vertex_pivot_mode );
				float3 PivotsOnly105_g51441 = (mul( GetObjectToWorldMatrix(), float4( temp_output_91_0_g51441 , 0.0 ) ).xyz).xyz;
				half3 On20_g51442 = ( localObjectPosition_UNITY_MATRIX_M14_g51441 + PivotsOnly105_g51441 );
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g51442 = On20_g51442;
				#else
				float3 staticSwitch14_g51442 = Off19_g51442;
				#endif
				half3 ObjectData20_g51443 = staticSwitch14_g51442;
				half3 WorldData19_g51443 = Off19_g51442;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51443 = WorldData19_g51443;
				#else
				float3 staticSwitch14_g51443 = ObjectData20_g51443;
				#endif
				float3 temp_output_66_0_g51441 = staticSwitch14_g51443;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g51441 = ( temp_output_66_0_g51441 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g51441 = temp_output_66_0_g51441;
				#endif
				half3 ObjectData20_g51440 = staticSwitch13_g51441;
				half3 WorldData19_g51440 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51440 = WorldData19_g51440;
				#else
				float3 staticSwitch14_g51440 = ObjectData20_g51440;
				#endif
				#ifdef TVE_IS_GRASS_SHADER
				float2 staticSwitch164_g51439 = (ase_worldPos).xz;
				#else
				float2 staticSwitch164_g51439 = (staticSwitch14_g51440).xz;
				#endif
				#ifdef TVE_IS_GRASS_SHADER
				float staticSwitch161_g51439 = TVE_NoiseSize_Grass;
				#else
				float staticSwitch161_g51439 = TVE_NoiseSize_Vegetation;
				#endif
				float2 panner73_g51439 = ( _TimeParameters.x * staticSwitch160_g51439 + ( staticSwitch164_g51439 * staticSwitch161_g51439 ));
				float4 tex2DNode75_g51439 = SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, samplerTVE_NoiseTex, panner73_g51439, 0.0 );
				float4 saferPower77_g51439 = max( abs( tex2DNode75_g51439 ) , 0.0001 );
				half Wind_Power2223_g50723 = Wind_Power369_g51421;
				float temp_output_167_0_g51439 = Wind_Power2223_g50723;
				float lerpResult168_g51439 = lerp( 1.5 , 0.25 , temp_output_167_0_g51439);
				float4 temp_cast_7 = (lerpResult168_g51439).xxxx;
				float4 break142_g51439 = pow( saferPower77_g51439 , temp_cast_7 );
				half Global_NoiseTex_R34_g50723 = break142_g51439.r;
				half Input_Speed62_g51479 = _MotionSpeed_20;
				float mulTime354_g51479 = _TimeParameters.x * Input_Speed62_g51479;
				float3 localObjectPosition_UNITY_MATRIX_M14_g51497 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g51498 = localObjectPosition_UNITY_MATRIX_M14_g51497;
				float3 appendResult93_g51497 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				float3 temp_output_91_0_g51497 = ( appendResult93_g51497 * _vertex_pivot_mode );
				float3 PivotsOnly105_g51497 = (mul( GetObjectToWorldMatrix(), float4( temp_output_91_0_g51497 , 0.0 ) ).xyz).xyz;
				half3 On20_g51498 = ( localObjectPosition_UNITY_MATRIX_M14_g51497 + PivotsOnly105_g51497 );
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g51498 = On20_g51498;
				#else
				float3 staticSwitch14_g51498 = Off19_g51498;
				#endif
				half3 ObjectData20_g51499 = staticSwitch14_g51498;
				half3 WorldData19_g51499 = Off19_g51498;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51499 = WorldData19_g51499;
				#else
				float3 staticSwitch14_g51499 = ObjectData20_g51499;
				#endif
				float3 temp_output_66_0_g51497 = staticSwitch14_g51499;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g51497 = ( temp_output_66_0_g51497 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g51497 = temp_output_66_0_g51497;
				#endif
				float3 break9_g51497 = staticSwitch13_g51497;
				half Variation_Complex102_g51495 = frac( ( inputMesh.ase_color.r + ( break9_g51497.x + break9_g51497.z ) ) );
				float ObjectData20_g51496 = Variation_Complex102_g51495;
				half Variation_Simple105_g51495 = inputMesh.ase_color.r;
				float WorldData19_g51496 = Variation_Simple105_g51495;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g51496 = WorldData19_g51496;
				#else
				float staticSwitch14_g51496 = ObjectData20_g51496;
				#endif
				half Motion_Variation3073_g50723 = staticSwitch14_g51496;
				float temp_output_3154_0_g50723 = ( _MotionVariation_20 * Motion_Variation3073_g50723 );
				float Motion_Variation284_g51479 = temp_output_3154_0_g50723;
				float Motion_Scale287_g51479 = ( _MotionScale_20 * ase_worldPos.x );
				half Variation127_g51521 = temp_output_3154_0_g50723;
				float lerpResult110_g51521 = lerp( ceil( saturate( ( frac( ( Variation127_g51521 + 0.3576 ) ) - 0.6 ) ) ) , ceil( saturate( ( frac( ( Variation127_g51521 + 0.1715 ) ) - 0.4 ) ) ) , (sin( _TimeParameters.x )*0.5 + 0.5));
				float temp_output_112_0_g51521 = Wind_Power2223_g50723;
				float lerpResult111_g51521 = lerp( lerpResult110_g51521 , 1.0 , ( temp_output_112_0_g51521 * temp_output_112_0_g51521 * temp_output_112_0_g51521 * temp_output_112_0_g51521 ));
				float lerpResult126_g51521 = lerp( lerpResult111_g51521 , 1.0 , ( 1.0 - saturate( Variation127_g51521 ) ));
				half Motion_Rolling138_g50723 = ( ( _MotionAmplitude_20 * Motion_Max_Rolling1137_g50723 ) * ( Wind_Power_203109_g50723 * Mesh_Motion_260_g50723 * Global_NoiseTex_R34_g50723 * _VertexRollingMode ) * sin( ( mulTime354_g51479 + Motion_Variation284_g51479 + Motion_Scale287_g51479 ) ) * lerpResult126_g51521 );
				half Angle44_g51512 = Motion_Rolling138_g50723;
				half3 VertexPos40_g51437 = ( VertexPosRotationAxis50_g51512 + ( VertexPosOtherAxis82_g51512 * cos( Angle44_g51512 ) ) + ( cross( float3(0,1,0) , VertexPosOtherAxis82_g51512 ) * sin( Angle44_g51512 ) ) );
				float3 appendResult74_g51437 = (float3(VertexPos40_g51437.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g51437 = appendResult74_g51437;
				float3 break84_g51437 = VertexPos40_g51437;
				float3 appendResult81_g51437 = (float3(0.0 , break84_g51437.y , break84_g51437.z));
				half3 VertexPosOtherAxis82_g51437 = appendResult81_g51437;
				float ObjectData20_g51438 = 3.14;
				float Bounds_Height374_g50723 = _MaxBoundsInfo.y;
				float WorldData19_g51438 = ( Bounds_Height374_g50723 * 3.14 );
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g51438 = WorldData19_g51438;
				#else
				float staticSwitch14_g51438 = ObjectData20_g51438;
				#endif
				float Motion_Max_Bending1133_g50723 = staticSwitch14_g51438;
				float lerpResult376_g51421 = lerp( 0.1 , 1.0 , Wind_Power369_g51421);
				half Wind_Power_103106_g50723 = lerpResult376_g51421;
				float3 appendResult397_g51421 = (float3(break322_g51421.x , 0.0 , break322_g51421.y));
				float3 temp_output_398_0_g51421 = (appendResult397_g51421*2.0 + -1.0);
				float3 ase_parentObjectScale = ( 1.0 / float3( length( GetWorldToObjectMatrix()[ 0 ].xyz ), length( GetWorldToObjectMatrix()[ 1 ].xyz ), length( GetWorldToObjectMatrix()[ 2 ].xyz ) ) );
				float3 temp_output_339_0_g51421 = ( mul( GetWorldToObjectMatrix(), float4( temp_output_398_0_g51421 , 0.0 ) ).xyz * ase_parentObjectScale );
				half2 Wind_DirectionOS39_g50723 = (temp_output_339_0_g51421).xz;
				half Input_Speed62_g51477 = _MotionSpeed_10;
				float mulTime373_g51477 = _TimeParameters.x * Input_Speed62_g51477;
				half Motion_Variation284_g51477 = ( _MotionVariation_10 * Motion_Variation3073_g50723 );
				float2 appendResult344_g51477 = (float2(ase_worldPos.x , ase_worldPos.z));
				float2 Motion_Scale287_g51477 = ( _MotionScale_10 * appendResult344_g51477 );
				half2 Sine_MinusOneToOne281_g51477 = sin( ( mulTime373_g51477 + Motion_Variation284_g51477 + Motion_Scale287_g51477 ) );
				float2 temp_cast_12 = (1.0).xx;
				half Input_Turbulence327_g51477 = Global_NoiseTex_R34_g50723;
				float2 lerpResult321_g51477 = lerp( Sine_MinusOneToOne281_g51477 , temp_cast_12 , Input_Turbulence327_g51477);
				half2 Motion_Bending2258_g50723 = ( ( _MotionAmplitude_10 * Motion_Max_Bending1133_g50723 ) * Wind_Power_103106_g50723 * Wind_DirectionOS39_g50723 * Global_NoiseTex_R34_g50723 * lerpResult321_g51477 );
				half Interaction_Amplitude4137_g50723 = _InteractionAmplitude;
				float3 localObjectPosition_UNITY_MATRIX_M14_g51526 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g51527 = localObjectPosition_UNITY_MATRIX_M14_g51526;
				float3 appendResult93_g51526 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				float3 temp_output_91_0_g51526 = ( appendResult93_g51526 * _vertex_pivot_mode );
				float3 PivotsOnly105_g51526 = (mul( GetObjectToWorldMatrix(), float4( temp_output_91_0_g51526 , 0.0 ) ).xyz).xyz;
				half3 On20_g51527 = ( localObjectPosition_UNITY_MATRIX_M14_g51526 + PivotsOnly105_g51526 );
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g51527 = On20_g51527;
				#else
				float3 staticSwitch14_g51527 = Off19_g51527;
				#endif
				half3 ObjectData20_g51528 = staticSwitch14_g51527;
				half3 WorldData19_g51528 = Off19_g51527;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51528 = WorldData19_g51528;
				#else
				float3 staticSwitch14_g51528 = ObjectData20_g51528;
				#endif
				float3 temp_output_66_0_g51526 = staticSwitch14_g51528;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g51526 = ( temp_output_66_0_g51526 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g51526 = temp_output_66_0_g51526;
				#endif
				half3 ObjectData20_g51525 = staticSwitch13_g51526;
				half3 WorldData19_g51525 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51525 = WorldData19_g51525;
				#else
				float3 staticSwitch14_g51525 = ObjectData20_g51525;
				#endif
				float3 Position83_g51524 = staticSwitch14_g51525;
				float temp_output_84_0_g51524 = _LayerReactValue;
				float4 lerpResult87_g51524 = lerp( TVE_ReactParams , SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ReactTex, samplerTVE_ReactTex, ( (TVE_ReactCoord).zw + ( (TVE_ReactCoord).xy * (Position83_g51524).xz ) ),temp_output_84_0_g51524, 0.0 ) , TVE_ReactUsage[(int)temp_output_84_0_g51524]);
				half4 Global_React_Params4173_g50723 = lerpResult87_g51524;
				float4 break322_g51522 = Global_React_Params4173_g50723;
				half Interaction_Mask66_g50723 = break322_g51522.z;
				float3 appendResult397_g51522 = (float3(break322_g51522.x , 0.0 , break322_g51522.y));
				float3 temp_output_398_0_g51522 = (appendResult397_g51522*2.0 + -1.0);
				float3 temp_output_339_0_g51522 = ( mul( GetWorldToObjectMatrix(), float4( temp_output_398_0_g51522 , 0.0 ) ).xyz * ase_parentObjectScale );
				half2 Interaction_DirectionOS4158_g50723 = (temp_output_339_0_g51522).xz;
				float lerpResult3307_g50723 = lerp( 1.0 , Motion_Variation3073_g50723 , _InteractionVariation);
				half2 Motion_Interaction53_g50723 = ( Interaction_Amplitude4137_g50723 * Motion_Max_Bending1133_g50723 * Interaction_Mask66_g50723 * Interaction_Mask66_g50723 * Interaction_DirectionOS4158_g50723 * lerpResult3307_g50723 );
				float2 lerpResult109_g50723 = lerp( Motion_Bending2258_g50723 , Motion_Interaction53_g50723 , ( Interaction_Mask66_g50723 * saturate( Interaction_Amplitude4137_g50723 ) ));
				half Mesh_Motion_182_g50723 = inputMesh.ase_texcoord3.x;
				float2 break143_g50723 = ( lerpResult109_g50723 * Mesh_Motion_182_g50723 );
				half Motion_Z190_g50723 = break143_g50723.y;
				half Angle44_g51437 = Motion_Z190_g50723;
				half3 VertexPos40_g51436 = ( VertexPosRotationAxis50_g51437 + ( VertexPosOtherAxis82_g51437 * cos( Angle44_g51437 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g51437 ) * sin( Angle44_g51437 ) ) );
				float3 appendResult74_g51436 = (float3(0.0 , 0.0 , VertexPos40_g51436.z));
				half3 VertexPosRotationAxis50_g51436 = appendResult74_g51436;
				float3 break84_g51436 = VertexPos40_g51436;
				float3 appendResult81_g51436 = (float3(break84_g51436.x , break84_g51436.y , 0.0));
				half3 VertexPosOtherAxis82_g51436 = appendResult81_g51436;
				half Motion_X216_g50723 = break143_g50723.x;
				half Angle44_g51436 = -Motion_X216_g50723;
				float3 Vertex_Motion_Object833_g50723 = ( VertexPosRotationAxis50_g51436 + ( VertexPosOtherAxis82_g51436 * cos( Angle44_g51436 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g51436 ) * sin( Angle44_g51436 ) ) );
				float3 temp_output_3474_0_g50723 = ( PositionOS3588_g50723 - Mesh_PivotsOS2291_g50723 );
				float3 appendResult2047_g50723 = (float3(Motion_Rolling138_g50723 , 0.0 , -Motion_Rolling138_g50723));
				float3 appendResult2043_g50723 = (float3(Motion_X216_g50723 , 0.0 , Motion_Z190_g50723));
				float3 Vertex_Motion_World1118_g50723 = ( ( temp_output_3474_0_g50723 + appendResult2047_g50723 ) + appendResult2043_g50723 );
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch3312_g50723 = Vertex_Motion_World1118_g50723;
				#else
				float3 staticSwitch3312_g50723 = ( Vertex_Motion_Object833_g50723 + ( 0.0 * _VertexDataMode ) );
				#endif
				half Global_Vertex_Size174_g50723 = break322_g51522.w;
				float lerpResult346_g50723 = lerp( 1.0 , Global_Vertex_Size174_g50723 , _GlobalSize);
				float3 appendResult3480_g50723 = (float3(lerpResult346_g50723 , lerpResult346_g50723 , lerpResult346_g50723));
				half3 ObjectData20_g51435 = appendResult3480_g50723;
				half3 _Vector11 = half3(1,1,1);
				half3 WorldData19_g51435 = _Vector11;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51435 = WorldData19_g51435;
				#else
				float3 staticSwitch14_g51435 = ObjectData20_g51435;
				#endif
				half3 Vertex_Size1741_g50723 = staticSwitch14_g51435;
				half3 _Vector5 = half3(1,1,1);
				float3 Vertex_SizeFade1740_g50723 = _Vector5;
				half3 Grass_Coverage2661_g50723 = half3(0,0,0);
				float3 Final_VertexPosition890_g50723 = ( ( staticSwitch3312_g50723 * Vertex_Size1741_g50723 * Vertex_SizeFade1740_g50723 ) + Mesh_PivotsOS2291_g50723 + Grass_Coverage2661_g50723 );
				
				float2 vertexToFrag11_g51423 = ( ( inputMesh.ase_texcoord.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				outputPackedVaryingsMeshToPS.ase_texcoord5.xy = vertexToFrag11_g51423;
				float2 appendResult21_g51510 = (float2(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord.w));
				float2 Mesh_DetailCoord3_g50723 = appendResult21_g51510;
				float2 vertexToFrag11_g51446 = ( ( Mesh_DetailCoord3_g50723 * (_SecondUVs).xy ) + (_SecondUVs).zw );
				outputPackedVaryingsMeshToPS.ase_texcoord5.zw = vertexToFrag11_g51446;
				half Mesh_DetailMask90_g50723 = inputMesh.ase_color.b;
				float vertexToFrag11_g51546 = ( ( Mesh_DetailMask90_g50723 - 0.5 ) + _DetailMeshValue );
				outputPackedVaryingsMeshToPS.ase_texcoord6.x = vertexToFrag11_g51546;
				float3 ase_worldNormal = TransformObjectToWorldNormal(inputMesh.normalOS);
				float3 ase_worldTangent = TransformObjectToWorldDir(inputMesh.tangentOS.xyz);
				float ase_vertexTangentSign = inputMesh.tangentOS.w * unity_WorldTransformParams.w;
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				outputPackedVaryingsMeshToPS.ase_texcoord6.yzw = ase_worldBitangent;
				float3 vertexToFrag3890_g50723 = ase_worldPos;
				outputPackedVaryingsMeshToPS.ase_texcoord7.xyz = vertexToFrag3890_g50723;
				
				float2 vertexToFrag11_g51537 = ( ( inputMesh.ase_texcoord.xy * (_EmissiveUVs).xy ) + (_EmissiveUVs).zw );
				outputPackedVaryingsMeshToPS.ase_texcoord8.xy = vertexToFrag11_g51537;
				
				float temp_output_7_0_g51545 = TVE_CameraFadeStart;
				float saferPower3976_g50723 = max( saturate( ( ( distance( ase_worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g51545 ) / ( TVE_CameraFadeEnd - temp_output_7_0_g51545 ) ) ) , 0.0001 );
				float temp_output_3976_0_g50723 = pow( saferPower3976_g50723 , _FadeCameraValue );
				float vertexToFrag11_g51542 = temp_output_3976_0_g50723;
				outputPackedVaryingsMeshToPS.ase_texcoord7.w = vertexToFrag11_g51542;
				
				outputPackedVaryingsMeshToPS.ase_color = inputMesh.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord8.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = Final_VertexPosition890_g50723;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS =  inputMesh.normalOS ;
				inputMesh.tangentOS =  inputMesh.tangentOS ;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				float3 normalWS = TransformObjectToWorldNormal(inputMesh.normalOS);
				float4 tangentWS = float4(TransformObjectToWorldDir(inputMesh.tangentOS.xyz), inputMesh.tangentOS.w);

				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.interp00.xyz = positionRWS;
				outputPackedVaryingsMeshToPS.interp01.xyz = normalWS;
				outputPackedVaryingsMeshToPS.interp02.xyzw = tangentWS;
				outputPackedVaryingsMeshToPS.interp03.xyzw = inputMesh.uv1;
				outputPackedVaryingsMeshToPS.interp04.xyzw = inputMesh.uv2;
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.uv1 = v.uv1;
				o.uv2 = v.uv2;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.uv1 = patch[0].uv1 * bary.x + patch[1].uv1 * bary.y + patch[2].uv1 * bary.z;
				o.uv2 = patch[0].uv2 * bary.x + patch[1].uv2 * bary.y + patch[2].uv2 * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			void Frag( PackedVaryingsMeshToPS packedInput,
						OUTPUT_GBUFFER(outGBuffer)
						#ifdef _DEPTHOFFSET_ON
						, out float outputDepth : SV_Depth
						#endif
						
						)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );
				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				float3 positionRWS = packedInput.interp00.xyz;
				float3 normalWS = packedInput.interp01.xyz;
				float4 tangentWS = packedInput.interp02.xyzw;

				input.positionSS = packedInput.positionCS;
				input.positionRWS = positionRWS;
				input.tangentToWorld = BuildTangentToWorld(tangentWS, normalWS);
				input.texCoord1 = packedInput.interp03.xyzw;
				input.texCoord2 = packedInput.interp04.xyzw;

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false );
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);
				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);
				SurfaceData surfaceData;
				BuiltinData builtinData;

				GlobalSurfaceDescription surfaceDescription = (GlobalSurfaceDescription)0;
				float2 vertexToFrag11_g51423 = packedInput.ase_texcoord5.xy;
				half2 Main_UVs15_g50723 = vertexToFrag11_g51423;
				float4 tex2DNode29_g50723 = SAMPLE_TEXTURE2D( _MainAlbedoTex, sampler_MainAlbedoTex, Main_UVs15_g50723 );
				float3 temp_output_51_0_g50723 = ( (_MainColor).rgb * (tex2DNode29_g50723).rgb );
				half3 Main_Albedo99_g50723 = temp_output_51_0_g50723;
				float2 vertexToFrag11_g51446 = packedInput.ase_texcoord5.zw;
				half2 Second_UVs17_g50723 = vertexToFrag11_g51446;
				half3 Second_Albedo153_g50723 = (( _SecondColor * SAMPLE_TEXTURE2D( _SecondAlbedoTex, sampler_SecondMaskTex, Second_UVs17_g50723 ) )).rgb;
				float vertexToFrag11_g51546 = packedInput.ase_texcoord6.x;
				float temp_output_3919_0_g50723 = vertexToFrag11_g51546;
				half Blend_Source1540_g50723 = temp_output_3919_0_g50723;
				float4 tex2DNode35_g50723 = SAMPLE_TEXTURE2D( _MainMaskTex, sampler_MainAlbedoTex, Main_UVs15_g50723 );
				half Main_Mask57_g50723 = tex2DNode35_g50723.b;
				float4 tex2DNode33_g50723 = SAMPLE_TEXTURE2D( _SecondMaskTex, sampler_SecondMaskTex, Second_UVs17_g50723 );
				half Second_Mask81_g50723 = tex2DNode33_g50723.b;
				float lerpResult1327_g50723 = lerp( Main_Mask57_g50723 , Second_Mask81_g50723 , _DetailMaskMode);
				float lerpResult4058_g50723 = lerp( lerpResult1327_g50723 , ( 1.0 - lerpResult1327_g50723 ) , _DetailMaskInvertMode);
				float temp_output_7_0_g51551 = _DetailBlendMinValue;
				half Mask_Detail147_g50723 = saturate( ( ( saturate( ( Blend_Source1540_g50723 + ( Blend_Source1540_g50723 * lerpResult4058_g50723 ) ) ) - temp_output_7_0_g51551 ) / ( _DetailBlendMaxValue - temp_output_7_0_g51551 ) ) );
				float3 lerpResult235_g50723 = lerp( Main_Albedo99_g50723 , ( Main_Albedo99_g50723 * Second_Albedo153_g50723 * 4.594794 ) , Mask_Detail147_g50723);
				float3 lerpResult208_g50723 = lerp( Main_Albedo99_g50723 , Second_Albedo153_g50723 , Mask_Detail147_g50723);
				#if defined(TVE_DETAIL_BLEND_OVERLAY)
				float3 staticSwitch4062_g50723 = lerpResult235_g50723;
				#elif defined(TVE_DETAIL_BLEND_REPLACE)
				float3 staticSwitch4062_g50723 = lerpResult208_g50723;
				#else
				float3 staticSwitch4062_g50723 = lerpResult235_g50723;
				#endif
				#if defined(TVE_DETAIL_MODE_OFF)
				float3 staticSwitch255_g50723 = Main_Albedo99_g50723;
				#elif defined(TVE_DETAIL_MODE_ON)
				float3 staticSwitch255_g50723 = staticSwitch4062_g50723;
				#else
				float3 staticSwitch255_g50723 = Main_Albedo99_g50723;
				#endif
				half3 Blend_Albedo265_g50723 = staticSwitch255_g50723;
				half3 Blend_AlbedoTinted2808_g50723 = ( float3(1,1,1) * float3(1,1,1) * float3(1,1,1) * Blend_Albedo265_g50723 );
				half3 Blend_AlbedoColored863_g50723 = Blend_AlbedoTinted2808_g50723;
				half3 Blend_AlbedoAndSubsurface149_g50723 = Blend_AlbedoColored863_g50723;
				half3 Global_OverlayColor1758_g50723 = (TVE_OverlayColor).rgb;
				float3 unpack4112_g50723 = UnpackNormalScale( SAMPLE_TEXTURE2D( _MainNormalTex, sampler_MainAlbedoTex, Main_UVs15_g50723 ), _MainNormalValue );
				unpack4112_g50723.z = lerp( 1, unpack4112_g50723.z, saturate(_MainNormalValue) );
				half3 Main_Normal137_g50723 = unpack4112_g50723;
				float3 ase_worldBitangent = packedInput.ase_texcoord6.yzw;
				float3 tanToWorld0 = float3( tangentWS.xyz.x, ase_worldBitangent.x, normalWS.x );
				float3 tanToWorld1 = float3( tangentWS.xyz.y, ase_worldBitangent.y, normalWS.y );
				float3 tanToWorld2 = float3( tangentWS.xyz.z, ase_worldBitangent.z, normalWS.z );
				float3 tanNormal4099_g50723 = Main_Normal137_g50723;
				float3 worldNormal4099_g50723 = float3(dot(tanToWorld0,tanNormal4099_g50723), dot(tanToWorld1,tanNormal4099_g50723), dot(tanToWorld2,tanNormal4099_g50723));
				float3 Main_Normal_WS4101_g50723 = worldNormal4099_g50723;
				float lerpResult3567_g50723 = lerp( _OverlayBottomValue , 1.0 , Main_Normal_WS4101_g50723.y);
				half Main_AlbedoTex_G3526_g50723 = tex2DNode29_g50723.g;
				half Second_AlbedoTex_G3581_g50723 = (SAMPLE_TEXTURE2D( _SecondAlbedoTex, sampler_SecondMaskTex, Second_UVs17_g50723 )).g;
				float lerpResult3579_g50723 = lerp( Main_AlbedoTex_G3526_g50723 , Second_AlbedoTex_G3581_g50723 , Mask_Detail147_g50723);
				#if defined(TVE_DETAIL_MODE_OFF)
				float staticSwitch3574_g50723 = Main_AlbedoTex_G3526_g50723;
				#elif defined(TVE_DETAIL_MODE_ON)
				float staticSwitch3574_g50723 = lerpResult3579_g50723;
				#else
				float staticSwitch3574_g50723 = Main_AlbedoTex_G3526_g50723;
				#endif
				float3 vertexToFrag3890_g50723 = packedInput.ase_texcoord7.xyz;
				float3 PositionWS_PerVertex3905_g50723 = vertexToFrag3890_g50723;
				float3 Position82_g51514 = PositionWS_PerVertex3905_g50723;
				float temp_output_84_0_g51514 = _LayerExtrasValue;
				float4 lerpResult88_g51514 = lerp( TVE_ExtrasParams , SAMPLE_TEXTURE2D_ARRAY( TVE_ExtrasTex, samplerTVE_ExtrasTex, ( (TVE_ExtrasCoord).zw + ( (TVE_ExtrasCoord).xy * (Position82_g51514).xz ) ),temp_output_84_0_g51514 ) , TVE_ExtrasUsage[(int)temp_output_84_0_g51514]);
				float4 break89_g51514 = lerpResult88_g51514;
				half Global_Extras_Overlay156_g50723 = break89_g51514.b;
				float temp_output_1025_0_g50723 = ( _GlobalOverlay * Global_Extras_Overlay156_g50723 );
				half Overlay_Commons1365_g50723 = temp_output_1025_0_g50723;
				float temp_output_7_0_g51561 = _OverlayMaskMinValue;
				half Overlay_Mask269_g50723 = saturate( ( ( ( ( ( lerpResult3567_g50723 * 0.5 ) + staticSwitch3574_g50723 ) * Overlay_Commons1365_g50723 ) - temp_output_7_0_g51561 ) / ( _OverlayMaskMaxValue - temp_output_7_0_g51561 ) ) );
				float3 lerpResult336_g50723 = lerp( Blend_AlbedoAndSubsurface149_g50723 , Global_OverlayColor1758_g50723 , Overlay_Mask269_g50723);
				half3 Final_Albedo359_g50723 = lerpResult336_g50723;
				float3 temp_cast_3 = (1.0).xxx;
				float Mesh_Occlusion318_g50723 = packedInput.ase_color.g;
				float temp_output_7_0_g51557 = _VertexOcclusionMinValue;
				float3 lerpResult2945_g50723 = lerp( (_VertexOcclusionColor).rgb , temp_cast_3 , saturate( ( ( Mesh_Occlusion318_g50723 - temp_output_7_0_g51557 ) / ( _VertexOcclusionMaxValue - temp_output_7_0_g51557 ) ) ));
				float3 Vertex_Occlusion648_g50723 = lerpResult2945_g50723;
				
				float3 unpack4114_g50723 = UnpackNormalScale( SAMPLE_TEXTURE2D( _SecondNormalTex, sampler_SecondMaskTex, Second_UVs17_g50723 ), _SecondNormalValue );
				unpack4114_g50723.z = lerp( 1, unpack4114_g50723.z, saturate(_SecondNormalValue) );
				half3 Second_Normal179_g50723 = unpack4114_g50723;
				float3 lerpResult230_g50723 = lerp( float3( 0,0,1 ) , Second_Normal179_g50723 , Mask_Detail147_g50723);
				float3 lerpResult3372_g50723 = lerp( float3( 0,0,1 ) , Main_Normal137_g50723 , _DetailNormalValue);
				float3 lerpResult3376_g50723 = lerp( Main_Normal137_g50723 , BlendNormal( lerpResult3372_g50723 , Second_Normal179_g50723 ) , Mask_Detail147_g50723);
				#if defined(TVE_DETAIL_BLEND_OVERLAY)
				float3 staticSwitch4063_g50723 = BlendNormal( Main_Normal137_g50723 , lerpResult230_g50723 );
				#elif defined(TVE_DETAIL_BLEND_REPLACE)
				float3 staticSwitch4063_g50723 = lerpResult3376_g50723;
				#else
				float3 staticSwitch4063_g50723 = BlendNormal( Main_Normal137_g50723 , lerpResult230_g50723 );
				#endif
				#if defined(TVE_DETAIL_MODE_OFF)
				float3 staticSwitch267_g50723 = Main_Normal137_g50723;
				#elif defined(TVE_DETAIL_MODE_ON)
				float3 staticSwitch267_g50723 = staticSwitch4063_g50723;
				#else
				float3 staticSwitch267_g50723 = Main_Normal137_g50723;
				#endif
				float3 temp_output_13_0_g51558 = staticSwitch267_g50723;
				float3 switchResult12_g51558 = (((isFrontFace>0)?(temp_output_13_0_g51558):(( temp_output_13_0_g51558 * _render_normals_options ))));
				half3 Blend_Normal312_g50723 = switchResult12_g51558;
				half3 Final_Normal366_g50723 = Blend_Normal312_g50723;
				
				float3 temp_cast_5 = (( 0.04 * _RenderSpecular )).xxx;
				
				float3 hdEmission4189_g50723 = ASEGetEmissionHDRColor(_EmissiveColor.rgb,_EmissiveIntensityParams.x,_EmissiveExposureValue,GetInverseCurrentExposureMultiplier());
				float2 vertexToFrag11_g51537 = packedInput.ase_texcoord8.xy;
				half2 Emissive_UVs2468_g50723 = vertexToFrag11_g51537;
				half3 Final_Emissive2476_g50723 = ( (( hdEmission4189_g50723 * SAMPLE_TEXTURE2D( _EmissiveTex, sampler_EmissiveTex, Emissive_UVs2468_g50723 ) )).rgb * TVE_EmissiveValue );
				
				half Main_Smoothness227_g50723 = ( tex2DNode35_g50723.a * _MainSmoothnessValue );
				half Second_Smoothness236_g50723 = ( tex2DNode33_g50723.a * _SecondSmoothnessValue );
				float lerpResult266_g50723 = lerp( Main_Smoothness227_g50723 , Second_Smoothness236_g50723 , Mask_Detail147_g50723);
				#if defined(TVE_DETAIL_BLEND_OVERLAY)
				float staticSwitch4065_g50723 = Main_Smoothness227_g50723;
				#elif defined(TVE_DETAIL_BLEND_REPLACE)
				float staticSwitch4065_g50723 = lerpResult266_g50723;
				#else
				float staticSwitch4065_g50723 = Main_Smoothness227_g50723;
				#endif
				#if defined(TVE_DETAIL_MODE_OFF)
				float staticSwitch297_g50723 = Main_Smoothness227_g50723;
				#elif defined(TVE_DETAIL_MODE_ON)
				float staticSwitch297_g50723 = staticSwitch4065_g50723;
				#else
				float staticSwitch297_g50723 = Main_Smoothness227_g50723;
				#endif
				half Blend_Smoothness314_g50723 = staticSwitch297_g50723;
				half Global_OverlaySmoothness311_g50723 = TVE_OverlaySmoothness;
				float lerpResult343_g50723 = lerp( Blend_Smoothness314_g50723 , Global_OverlaySmoothness311_g50723 , Overlay_Mask269_g50723);
				half Final_Smoothness371_g50723 = lerpResult343_g50723;
				half Global_Extras_Wetness305_g50723 = break89_g51514.g;
				float lerpResult3673_g50723 = lerp( 0.0 , Global_Extras_Wetness305_g50723 , _GlobalWetness);
				half Final_SmoothnessAndWetness4130_g50723 = saturate( ( Final_Smoothness371_g50723 + lerpResult3673_g50723 ) );
				
				float lerpResult240_g50723 = lerp( 1.0 , tex2DNode35_g50723.g , _MainOcclusionValue);
				half Main_Occlusion247_g50723 = lerpResult240_g50723;
				float lerpResult239_g50723 = lerp( 1.0 , tex2DNode33_g50723.g , _SecondOcclusionValue);
				half Second_Occlusion251_g50723 = lerpResult239_g50723;
				float lerpResult294_g50723 = lerp( Main_Occlusion247_g50723 , Second_Occlusion251_g50723 , Mask_Detail147_g50723);
				#if defined(TVE_DETAIL_BLEND_OVERLAY)
				float staticSwitch4066_g50723 = Main_Occlusion247_g50723;
				#elif defined(TVE_DETAIL_BLEND_REPLACE)
				float staticSwitch4066_g50723 = lerpResult294_g50723;
				#else
				float staticSwitch4066_g50723 = Main_Occlusion247_g50723;
				#endif
				#if defined(TVE_DETAIL_MODE_OFF)
				float staticSwitch310_g50723 = Main_Occlusion247_g50723;
				#elif defined(TVE_DETAIL_MODE_ON)
				float staticSwitch310_g50723 = staticSwitch4066_g50723;
				#else
				float staticSwitch310_g50723 = Main_Occlusion247_g50723;
				#endif
				half Blend_Occlusion323_g50723 = staticSwitch310_g50723;
				
				float localCustomAlphaClip3735_g50723 = ( 0.0 );
				float vertexToFrag11_g51542 = packedInput.ase_texcoord7.w;
				half Fade_Camera3743_g50723 = vertexToFrag11_g51542;
				half Final_AlphaFade3727_g50723 = ( 1.0 * Fade_Camera3743_g50723 );
				float temp_output_41_0_g51554 = Final_AlphaFade3727_g50723;
				float Main_Alpha316_g50723 = ( _MainColor.a * tex2DNode29_g50723.a );
				half AlphaTreshold2132_g50723 = _Cutoff;
				#ifdef TVE_ALPHA_CLIP
				float staticSwitch3792_g50723 = ( Main_Alpha316_g50723 - ( AlphaTreshold2132_g50723 - 0.5 ) );
				#else
				float staticSwitch3792_g50723 = Main_Alpha316_g50723;
				#endif
				half Final_Alpha3754_g50723 = staticSwitch3792_g50723;
				float temp_output_661_0_g50723 = ( saturate( ( temp_output_41_0_g51554 + ( temp_output_41_0_g51554 * SAMPLE_TEXTURE3D( TVE_ScreenTex3D, samplerTVE_ScreenTex3D, ( TVE_ScreenTexCoord * PositionWS_PerVertex3905_g50723 ) ).r ) ) ) * Final_Alpha3754_g50723 );
				float Alpha3735_g50723 = temp_output_661_0_g50723;
				float Treshold3735_g50723 = 0.5;
				{
				#if TVE_ALPHA_CLIP
				clip(Alpha3735_g50723 - Treshold3735_g50723);
				#endif
				}
				half Final_Clip914_g50723 = saturate( Alpha3735_g50723 );
				
				surfaceDescription.Albedo = ( Final_Albedo359_g50723 * Vertex_Occlusion648_g50723 );
				surfaceDescription.Normal = Final_Normal366_g50723;
				surfaceDescription.BentNormal = float3( 0, 0, 1 );
				surfaceDescription.CoatMask = 0;
				surfaceDescription.Metallic = 0;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = temp_cast_5;
				#endif

				surfaceDescription.Emission = Final_Emissive2476_g50723;
				surfaceDescription.Smoothness = Final_SmoothnessAndWetness4130_g50723;
				surfaceDescription.Occlusion = Blend_Occlusion323_g50723;
				surfaceDescription.Alpha = Final_Clip914_g50723;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				#endif

				#ifdef _ALPHATEST_SHADOW_ON
				surfaceDescription.AlphaClipThresholdShadow = 0.5;
				#endif

				surfaceDescription.AlphaClipThresholdDepthPrepass = 0.5;
				surfaceDescription.AlphaClipThresholdDepthPostpass = 0.5;

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceDescription.SpecularAAScreenSpaceVariance = 0;
				surfaceDescription.SpecularAAThreshold = 0;
				#endif

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceDescription.SpecularOcclusion = 0;
				#endif

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceDescription.Thickness = 1;
				#endif

				#ifdef _HAS_REFRACTION
				surfaceDescription.RefractionIndex = 1;
				surfaceDescription.RefractionColor = float3( 1, 1, 1 );
				surfaceDescription.RefractionDistance = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceDescription.SubsurfaceMask = 1;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceDescription.DiffusionProfile = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceDescription.Anisotropy = 1;
				surfaceDescription.Tangent = float3( 1, 0, 0 );
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceDescription.IridescenceMask = 0;
				surfaceDescription.IridescenceThickness = 0;
				#endif

				#ifdef _ASE_DISTORTION
				surfaceDescription.Distortion = float2 ( 2, -1 );
				surfaceDescription.DistortionBlur = 1;
				#endif

				#ifdef _ASE_BAKEDGI
				surfaceDescription.BakedGI = 0;
				#endif
				#ifdef _ASE_BAKEDBACKGI
				surfaceDescription.BakedBackGI = 0;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				GetSurfaceAndBuiltinData( surfaceDescription, input, V, posInput, surfaceData, builtinData );
				ENCODE_INTO_GBUFFER( surfaceData, builtinData, posInput.positionSS, outGBuffer );
				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "META"
			Tags { "LightMode"="Meta" }

			Cull Off

			HLSLPROGRAM

			#define ASE_NEED_CULLFACE 1
			#define _MATERIAL_FEATURE_SPECULAR_COLOR 1
			#define _ENERGY_CONSERVING_SPECULAR 1
			#pragma multi_compile _ DOTS_INSTANCING_ON
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define _AMBIENT_OCCLUSION 1
			#define HAVE_MESH_MODIFICATION
			#define ASE_SRP_VERSION 100202
			#if !defined(ASE_NEED_CULLFACE)
			#define ASE_NEED_CULLFACE 1
			#endif //ASE_NEED_CULLFACE
			#define ASE_USING_SAMPLING_MACROS 1


			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT
			#pragma shader_feature_local _DOUBLESIDED_ON
			#pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
			#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT
			#pragma shader_feature_local _ALPHATEST_ON

			#define SHADERPASS SHADERPASS_LIGHT_TRANSPORT

			#pragma vertex Vert
			#pragma fragment Frag

			//#define UNITY_MATERIAL_LIT

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#ifdef DEBUG_DISPLAY
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#endif
			
			CBUFFER_START( UnityPerMaterial )
			half4 _DetailBlendRemap;
			half4 _OverlayMaskRemap;
			float4 _NoiseMaskRemap;
			half4 _SubsurfaceMaskRemap;
			half4 _VertexOcclusionRemap;
			float4 _MaxBoundsInfo;
			float4 _SubsurfaceDiffusion_asset;
			half4 _MainColor;
			half4 _MainUVs;
			half4 _SecondColor;
			float4 _GradientMaskRemap;
			float4 _SubsurfaceDiffusion_Asset;
			float4 _Color;
			half4 _VertexOcclusionColor;
			half4 _SecondUVs;
			half4 _ColorsMaskRemap;
			float4 _EmissiveIntensityParams;
			half4 _EmissiveColor;
			half4 _EmissiveUVs;
			half3 _render_normals_options;
			half _MotionVariation_10;
			float _MotionSpeed_10;
			half _MotionAmplitude_10;
			half _MotionScale_20;
			half _MotionVariation_20;
			half _MotionSpeed_20;
			half _VertexRollingMode;
			half _LayerMotionValue;
			half _vertex_pivot_mode;
			half _MotionAmplitude_20;
			half _render_src;
			half _IsStandardShader;
			half _MainSmoothnessValue;
			half _SecondSmoothnessValue;
			half _GlobalWetness;
			half _MainOcclusionValue;
			float _MotionScale_10;
			half _InteractionAmplitude;
			half _EmissiveExposureValue;
			half _VertexOcclusionMinValue;
			half _OverlayMaskMaxValue;
			half _OverlayMaskMinValue;
			half _SecondNormalValue;
			half _LayerExtrasValue;
			half _GlobalOverlay;
			half _DetailNormalValue;
			half _MainNormalValue;
			half _OverlayBottomValue;
			half _DetailBlendMaxValue;
			half _DetailBlendMinValue;
			half _DetailMaskInvertMode;
			half _DetailMaskMode;
			half _DetailMeshValue;
			half _RenderSpecular;
			half _GlobalSize;
			half _VertexDataMode;
			half _InteractionVariation;
			half _LayerReactValue;
			half _VertexOcclusionMaxValue;
			half _render_zw;
			half _IsVersion;
			half _RenderNormals;
			half _VariationMotionMessage;
			half _RenderClip;
			half _Cutoff;
			half _MotionSpace;
			half _GradientCat;
			half _VertexVariationMode;
			half _RenderDecals;
			half _TranslucencyDirectValue;
			half _NoiseCat;
			half _SubsurfaceCat;
			half _LayersSpace;
			half _RenderZWrite;
			half _DetailMode;
			half _EmissiveCat;
			half _RenderMode;
			half _RenderSSR;
			half _SizeFadeCat;
			half _render_dst;
			half _render_cull;
			half _IsBarkShader;
			half _TranslucencyIntensityValue;
			half _TranslucencyNormalValue;
			half _FadeSpace;
			half _DetailSpace;
			half _TranslucencyShadowValue;
			half _EmissiveFlagMode;
			half _TranslucencyHDMessage;
			half _OcclusionCat;
			half _RenderPriority;
			half _TranslucencyAmbientValue;
			half _DetailCat;
			half _VertexMasksMode;
			half _SizeFadeMessage;
			half _MainCat;
			half _SecondOcclusionValue;
			half _ReceiveSpace;
			half _PerspectiveCat;
			half _VariationGlobalsMessage;
			float _SubsurfaceDiffusion;
			half _RenderingCat;
			half _DetailBlendMode;
			half _TranslucencyScatteringValue;
			half _IsTVEShader;
			half _GlobalCat;
			half _RenderCull;
			half _DetailTypeMode;
			half _MotionCat;
			half _FadeCameraValue;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			TEXTURE2D(_MainTex);
			SAMPLER(sampler_MainTex);
			TEXTURE2D(_BumpMap);
			SAMPLER(sampler_BumpMap);
			half4 TVE_MotionParams;
			TEXTURE2D_ARRAY(TVE_MotionTex);
			half4 TVE_MotionCoord;
			SAMPLER(samplerTVE_MotionTex);
			float TVE_MotionUsage[9];
			TEXTURE2D(TVE_NoiseTex);
			float2 TVE_NoiseSpeed_Vegetation;
			float2 TVE_NoiseSpeed_Grass;
			half TVE_NoiseSize_Vegetation;
			half TVE_NoiseSize_Grass;
			SAMPLER(samplerTVE_NoiseTex);
			half4 TVE_ReactParams;
			TEXTURE2D_ARRAY(TVE_ReactTex);
			half4 TVE_ReactCoord;
			SAMPLER(samplerTVE_ReactTex);
			float TVE_ReactUsage[9];
			TEXTURE2D(_MainAlbedoTex);
			SAMPLER(sampler_MainAlbedoTex);
			TEXTURE2D(_SecondAlbedoTex);
			TEXTURE2D(_SecondMaskTex);
			SAMPLER(sampler_SecondMaskTex);
			TEXTURE2D(_MainMaskTex);
			half4 TVE_OverlayColor;
			TEXTURE2D(_MainNormalTex);
			half4 TVE_ExtrasParams;
			TEXTURE2D_ARRAY(TVE_ExtrasTex);
			half4 TVE_ExtrasCoord;
			SAMPLER(samplerTVE_ExtrasTex);
			float TVE_ExtrasUsage[9];
			TEXTURE2D(_SecondNormalTex);
			TEXTURE2D(_EmissiveTex);
			SAMPLER(sampler_EmissiveTex);
			half TVE_EmissiveValue;
			half TVE_OverlaySmoothness;
			half TVE_CameraFadeStart;
			half TVE_CameraFadeEnd;
			TEXTURE3D(TVE_ScreenTex3D);
			half TVE_ScreenTexCoord;
			SAMPLER(samplerTVE_ScreenTex3D);


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_VFACE
			#pragma shader_feature_local TVE_ALPHA_CLIP
			#pragma shader_feature_local TVE_VERTEX_DATA_BATCHED
			#pragma shader_feature_local TVE_DETAIL_MODE_OFF TVE_DETAIL_MODE_ON
			#pragma shader_feature_local TVE_DETAIL_BLEND_OVERLAY TVE_DETAIL_BLEND_REPLACE
			//TVE Injection Defines
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			//TVE Pipeline Defines
			#define THE_VEGETATION_ENGINE
			#define IS_HD_PIPELINE
			//TVE HD Pipeline Defines
			#pragma shader_feature_local _DISABLE_DECALS
			#pragma shader_feature_local _DISABLE_SSR
			//TVE Shader Type Defines
			#define TVE_IS_VEGETATION_SHADER


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
				#define ASE_NEED_CULLFACE 1
			#endif

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv0 : TEXCOORD0;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_color : COLOR;
				float4 ase_texcoord5 : TEXCOORD5;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			float3 ObjectPosition_UNITY_MATRIX_M(  )
			{
				return float3(UNITY_MATRIX_M[0].w, UNITY_MATRIX_M[1].w, UNITY_MATRIX_M[2].w );
			}
			
			float3 ASEGetEmissionHDRColor(float3 ldrColor, float luminanceIntensity, float exposureWeight, float inverseCurrentExposureMultiplier)
			{
				float3 hdrColor = ldrColor * luminanceIntensity;
				hdrColor = lerp( hdrColor* inverseCurrentExposureMultiplier, hdrColor, exposureWeight);
				return hdrColor;
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout GlobalSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// surface data
				surfaceData.baseColor =					surfaceDescription.Albedo;
				surfaceData.perceptualSmoothness =		surfaceDescription.Smoothness;
				surfaceData.ambientOcclusion =			surfaceDescription.Occlusion;
				surfaceData.metallic =					surfaceDescription.Metallic;
				surfaceData.coatMask =					surfaceDescription.CoatMask;

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceData.specularOcclusion =			surfaceDescription.SpecularOcclusion;
				#endif
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.subsurfaceMask =			surfaceDescription.SubsurfaceMask;
				#endif
				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceData.thickness =					surfaceDescription.Thickness;
				#endif
				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceData.diffusionProfileHash =		asuint(surfaceDescription.DiffusionProfile);
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.specularColor =				surfaceDescription.Specular;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.anisotropy =				surfaceDescription.Anisotropy;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.iridescenceMask =			surfaceDescription.IridescenceMask;
				surfaceData.iridescenceThickness =		surfaceDescription.IridescenceThickness;
				#endif

				// refraction
				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.ior = surfaceDescription.RefractionIndex;
					surfaceData.transmittanceColor = surfaceDescription.RefractionColor;
					surfaceData.atDistance = surfaceDescription.RefractionDistance;

					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif


				// material features
				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				#endif
				#ifdef ASE_LIT_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				// others
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				// normals
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				normalTS = surfaceDescription.Normal;
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );

				// decals
				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs.tangentToWorld[2], surfaceDescription.Alpha);
					ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
				}
				#endif

				bentNormalWS = surfaceData.normalWS;
				
				#ifdef ASE_BENT_NORMAL
				GetNormalWS( fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants );
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.tangentWS = TransformTangentToWorld( surfaceDescription.Tangent, fragInputs.tangentToWorld );
				#endif
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );


				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#endif

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceData.perceptualSmoothness = GeometricNormalFiltering( surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[ 2 ], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold );
				#endif

				// debug
				#if defined(DEBUG_DISPLAY)
				if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				{
					surfaceData.metallic = 0;
				}
				ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif
			}

			void GetSurfaceAndBuiltinData(GlobalSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				ApplyDoubleSidedFlipOrMirror( fragInputs, doubleSidedConstants );

				#ifdef _ALPHATEST_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS );

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				builtinData.emissiveColor = surfaceDescription.Emission;

				#if (SHADERPASS == SHADERPASS_DISTORTION)
				builtinData.distortion = surfaceDescription.Distortion;
				builtinData.distortionBlur = surfaceDescription.DistortionBlur;
				#else
				builtinData.distortion = float2(0.0, 0.0);
				builtinData.distortionBlur = 0.0;
				#endif

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			CBUFFER_START(UnityMetaPass)
			bool4 unity_MetaVertexControl;
			bool4 unity_MetaFragmentControl;
			CBUFFER_END

			float unity_OneOverOutputBoost;
			float unity_MaxOutputValue;

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh  )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);

				float3 PositionOS3588_g50723 = inputMesh.positionOS;
				half3 _Vector1 = half3(0,0,0);
				half3 Mesh_PivotsOS2291_g50723 = _Vector1;
				float3 temp_output_2283_0_g50723 = ( PositionOS3588_g50723 - Mesh_PivotsOS2291_g50723 );
				half3 VertexPos40_g51512 = temp_output_2283_0_g50723;
				float3 appendResult74_g51512 = (float3(0.0 , VertexPos40_g51512.y , 0.0));
				float3 VertexPosRotationAxis50_g51512 = appendResult74_g51512;
				float3 break84_g51512 = VertexPos40_g51512;
				float3 appendResult81_g51512 = (float3(break84_g51512.x , 0.0 , break84_g51512.z));
				float3 VertexPosOtherAxis82_g51512 = appendResult81_g51512;
				float ObjectData20_g51480 = 3.14;
				float Bounds_Radius121_g50723 = _MaxBoundsInfo.x;
				float WorldData19_g51480 = Bounds_Radius121_g50723;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g51480 = WorldData19_g51480;
				#else
				float staticSwitch14_g51480 = ObjectData20_g51480;
				#endif
				float Motion_Max_Rolling1137_g50723 = staticSwitch14_g51480;
				float3 localObjectPosition_UNITY_MATRIX_M14_g51483 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g51484 = localObjectPosition_UNITY_MATRIX_M14_g51483;
				float3 appendResult93_g51483 = (float3(inputMesh.uv0.z , inputMesh.ase_texcoord3.w , inputMesh.uv0.w));
				float3 temp_output_91_0_g51483 = ( appendResult93_g51483 * _vertex_pivot_mode );
				float3 PivotsOnly105_g51483 = (mul( GetObjectToWorldMatrix(), float4( temp_output_91_0_g51483 , 0.0 ) ).xyz).xyz;
				half3 On20_g51484 = ( localObjectPosition_UNITY_MATRIX_M14_g51483 + PivotsOnly105_g51483 );
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g51484 = On20_g51484;
				#else
				float3 staticSwitch14_g51484 = Off19_g51484;
				#endif
				half3 ObjectData20_g51485 = staticSwitch14_g51484;
				half3 WorldData19_g51485 = Off19_g51484;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51485 = WorldData19_g51485;
				#else
				float3 staticSwitch14_g51485 = ObjectData20_g51485;
				#endif
				float3 temp_output_66_0_g51483 = staticSwitch14_g51485;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g51483 = ( temp_output_66_0_g51483 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g51483 = temp_output_66_0_g51483;
				#endif
				half3 ObjectData20_g51482 = staticSwitch13_g51483;
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.positionOS).xyz ) );
				half3 WorldData19_g51482 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51482 = WorldData19_g51482;
				#else
				float3 staticSwitch14_g51482 = ObjectData20_g51482;
				#endif
				float3 Position83_g51481 = staticSwitch14_g51482;
				float temp_output_84_0_g51481 = _LayerMotionValue;
				float4 lerpResult87_g51481 = lerp( TVE_MotionParams , SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_MotionTex, samplerTVE_MotionTex, ( (TVE_MotionCoord).zw + ( (TVE_MotionCoord).xy * (Position83_g51481).xz ) ),temp_output_84_0_g51481, 0.0 ) , TVE_MotionUsage[(int)temp_output_84_0_g51481]);
				half4 Global_Motion_Params3909_g50723 = lerpResult87_g51481;
				float4 break322_g51421 = Global_Motion_Params3909_g50723;
				half Wind_Power369_g51421 = break322_g51421.z;
				float lerpResult410_g51421 = lerp( 0.2 , 1.0 , Wind_Power369_g51421);
				half Wind_Power_203109_g50723 = lerpResult410_g51421;
				half Mesh_Motion_260_g50723 = inputMesh.ase_texcoord3.y;
				#ifdef TVE_IS_GRASS_SHADER
				float2 staticSwitch160_g51439 = TVE_NoiseSpeed_Grass;
				#else
				float2 staticSwitch160_g51439 = TVE_NoiseSpeed_Vegetation;
				#endif
				float3 localObjectPosition_UNITY_MATRIX_M14_g51441 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g51442 = localObjectPosition_UNITY_MATRIX_M14_g51441;
				float3 appendResult93_g51441 = (float3(inputMesh.uv0.z , inputMesh.ase_texcoord3.w , inputMesh.uv0.w));
				float3 temp_output_91_0_g51441 = ( appendResult93_g51441 * _vertex_pivot_mode );
				float3 PivotsOnly105_g51441 = (mul( GetObjectToWorldMatrix(), float4( temp_output_91_0_g51441 , 0.0 ) ).xyz).xyz;
				half3 On20_g51442 = ( localObjectPosition_UNITY_MATRIX_M14_g51441 + PivotsOnly105_g51441 );
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g51442 = On20_g51442;
				#else
				float3 staticSwitch14_g51442 = Off19_g51442;
				#endif
				half3 ObjectData20_g51443 = staticSwitch14_g51442;
				half3 WorldData19_g51443 = Off19_g51442;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51443 = WorldData19_g51443;
				#else
				float3 staticSwitch14_g51443 = ObjectData20_g51443;
				#endif
				float3 temp_output_66_0_g51441 = staticSwitch14_g51443;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g51441 = ( temp_output_66_0_g51441 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g51441 = temp_output_66_0_g51441;
				#endif
				half3 ObjectData20_g51440 = staticSwitch13_g51441;
				half3 WorldData19_g51440 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51440 = WorldData19_g51440;
				#else
				float3 staticSwitch14_g51440 = ObjectData20_g51440;
				#endif
				#ifdef TVE_IS_GRASS_SHADER
				float2 staticSwitch164_g51439 = (ase_worldPos).xz;
				#else
				float2 staticSwitch164_g51439 = (staticSwitch14_g51440).xz;
				#endif
				#ifdef TVE_IS_GRASS_SHADER
				float staticSwitch161_g51439 = TVE_NoiseSize_Grass;
				#else
				float staticSwitch161_g51439 = TVE_NoiseSize_Vegetation;
				#endif
				float2 panner73_g51439 = ( _TimeParameters.x * staticSwitch160_g51439 + ( staticSwitch164_g51439 * staticSwitch161_g51439 ));
				float4 tex2DNode75_g51439 = SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, samplerTVE_NoiseTex, panner73_g51439, 0.0 );
				float4 saferPower77_g51439 = max( abs( tex2DNode75_g51439 ) , 0.0001 );
				half Wind_Power2223_g50723 = Wind_Power369_g51421;
				float temp_output_167_0_g51439 = Wind_Power2223_g50723;
				float lerpResult168_g51439 = lerp( 1.5 , 0.25 , temp_output_167_0_g51439);
				float4 temp_cast_7 = (lerpResult168_g51439).xxxx;
				float4 break142_g51439 = pow( saferPower77_g51439 , temp_cast_7 );
				half Global_NoiseTex_R34_g50723 = break142_g51439.r;
				half Input_Speed62_g51479 = _MotionSpeed_20;
				float mulTime354_g51479 = _TimeParameters.x * Input_Speed62_g51479;
				float3 localObjectPosition_UNITY_MATRIX_M14_g51497 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g51498 = localObjectPosition_UNITY_MATRIX_M14_g51497;
				float3 appendResult93_g51497 = (float3(inputMesh.uv0.z , inputMesh.ase_texcoord3.w , inputMesh.uv0.w));
				float3 temp_output_91_0_g51497 = ( appendResult93_g51497 * _vertex_pivot_mode );
				float3 PivotsOnly105_g51497 = (mul( GetObjectToWorldMatrix(), float4( temp_output_91_0_g51497 , 0.0 ) ).xyz).xyz;
				half3 On20_g51498 = ( localObjectPosition_UNITY_MATRIX_M14_g51497 + PivotsOnly105_g51497 );
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g51498 = On20_g51498;
				#else
				float3 staticSwitch14_g51498 = Off19_g51498;
				#endif
				half3 ObjectData20_g51499 = staticSwitch14_g51498;
				half3 WorldData19_g51499 = Off19_g51498;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51499 = WorldData19_g51499;
				#else
				float3 staticSwitch14_g51499 = ObjectData20_g51499;
				#endif
				float3 temp_output_66_0_g51497 = staticSwitch14_g51499;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g51497 = ( temp_output_66_0_g51497 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g51497 = temp_output_66_0_g51497;
				#endif
				float3 break9_g51497 = staticSwitch13_g51497;
				half Variation_Complex102_g51495 = frac( ( inputMesh.ase_color.r + ( break9_g51497.x + break9_g51497.z ) ) );
				float ObjectData20_g51496 = Variation_Complex102_g51495;
				half Variation_Simple105_g51495 = inputMesh.ase_color.r;
				float WorldData19_g51496 = Variation_Simple105_g51495;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g51496 = WorldData19_g51496;
				#else
				float staticSwitch14_g51496 = ObjectData20_g51496;
				#endif
				half Motion_Variation3073_g50723 = staticSwitch14_g51496;
				float temp_output_3154_0_g50723 = ( _MotionVariation_20 * Motion_Variation3073_g50723 );
				float Motion_Variation284_g51479 = temp_output_3154_0_g50723;
				float Motion_Scale287_g51479 = ( _MotionScale_20 * ase_worldPos.x );
				half Variation127_g51521 = temp_output_3154_0_g50723;
				float lerpResult110_g51521 = lerp( ceil( saturate( ( frac( ( Variation127_g51521 + 0.3576 ) ) - 0.6 ) ) ) , ceil( saturate( ( frac( ( Variation127_g51521 + 0.1715 ) ) - 0.4 ) ) ) , (sin( _TimeParameters.x )*0.5 + 0.5));
				float temp_output_112_0_g51521 = Wind_Power2223_g50723;
				float lerpResult111_g51521 = lerp( lerpResult110_g51521 , 1.0 , ( temp_output_112_0_g51521 * temp_output_112_0_g51521 * temp_output_112_0_g51521 * temp_output_112_0_g51521 ));
				float lerpResult126_g51521 = lerp( lerpResult111_g51521 , 1.0 , ( 1.0 - saturate( Variation127_g51521 ) ));
				half Motion_Rolling138_g50723 = ( ( _MotionAmplitude_20 * Motion_Max_Rolling1137_g50723 ) * ( Wind_Power_203109_g50723 * Mesh_Motion_260_g50723 * Global_NoiseTex_R34_g50723 * _VertexRollingMode ) * sin( ( mulTime354_g51479 + Motion_Variation284_g51479 + Motion_Scale287_g51479 ) ) * lerpResult126_g51521 );
				half Angle44_g51512 = Motion_Rolling138_g50723;
				half3 VertexPos40_g51437 = ( VertexPosRotationAxis50_g51512 + ( VertexPosOtherAxis82_g51512 * cos( Angle44_g51512 ) ) + ( cross( float3(0,1,0) , VertexPosOtherAxis82_g51512 ) * sin( Angle44_g51512 ) ) );
				float3 appendResult74_g51437 = (float3(VertexPos40_g51437.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g51437 = appendResult74_g51437;
				float3 break84_g51437 = VertexPos40_g51437;
				float3 appendResult81_g51437 = (float3(0.0 , break84_g51437.y , break84_g51437.z));
				half3 VertexPosOtherAxis82_g51437 = appendResult81_g51437;
				float ObjectData20_g51438 = 3.14;
				float Bounds_Height374_g50723 = _MaxBoundsInfo.y;
				float WorldData19_g51438 = ( Bounds_Height374_g50723 * 3.14 );
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g51438 = WorldData19_g51438;
				#else
				float staticSwitch14_g51438 = ObjectData20_g51438;
				#endif
				float Motion_Max_Bending1133_g50723 = staticSwitch14_g51438;
				float lerpResult376_g51421 = lerp( 0.1 , 1.0 , Wind_Power369_g51421);
				half Wind_Power_103106_g50723 = lerpResult376_g51421;
				float3 appendResult397_g51421 = (float3(break322_g51421.x , 0.0 , break322_g51421.y));
				float3 temp_output_398_0_g51421 = (appendResult397_g51421*2.0 + -1.0);
				float3 ase_parentObjectScale = ( 1.0 / float3( length( GetWorldToObjectMatrix()[ 0 ].xyz ), length( GetWorldToObjectMatrix()[ 1 ].xyz ), length( GetWorldToObjectMatrix()[ 2 ].xyz ) ) );
				float3 temp_output_339_0_g51421 = ( mul( GetWorldToObjectMatrix(), float4( temp_output_398_0_g51421 , 0.0 ) ).xyz * ase_parentObjectScale );
				half2 Wind_DirectionOS39_g50723 = (temp_output_339_0_g51421).xz;
				half Input_Speed62_g51477 = _MotionSpeed_10;
				float mulTime373_g51477 = _TimeParameters.x * Input_Speed62_g51477;
				half Motion_Variation284_g51477 = ( _MotionVariation_10 * Motion_Variation3073_g50723 );
				float2 appendResult344_g51477 = (float2(ase_worldPos.x , ase_worldPos.z));
				float2 Motion_Scale287_g51477 = ( _MotionScale_10 * appendResult344_g51477 );
				half2 Sine_MinusOneToOne281_g51477 = sin( ( mulTime373_g51477 + Motion_Variation284_g51477 + Motion_Scale287_g51477 ) );
				float2 temp_cast_12 = (1.0).xx;
				half Input_Turbulence327_g51477 = Global_NoiseTex_R34_g50723;
				float2 lerpResult321_g51477 = lerp( Sine_MinusOneToOne281_g51477 , temp_cast_12 , Input_Turbulence327_g51477);
				half2 Motion_Bending2258_g50723 = ( ( _MotionAmplitude_10 * Motion_Max_Bending1133_g50723 ) * Wind_Power_103106_g50723 * Wind_DirectionOS39_g50723 * Global_NoiseTex_R34_g50723 * lerpResult321_g51477 );
				half Interaction_Amplitude4137_g50723 = _InteractionAmplitude;
				float3 localObjectPosition_UNITY_MATRIX_M14_g51526 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g51527 = localObjectPosition_UNITY_MATRIX_M14_g51526;
				float3 appendResult93_g51526 = (float3(inputMesh.uv0.z , inputMesh.ase_texcoord3.w , inputMesh.uv0.w));
				float3 temp_output_91_0_g51526 = ( appendResult93_g51526 * _vertex_pivot_mode );
				float3 PivotsOnly105_g51526 = (mul( GetObjectToWorldMatrix(), float4( temp_output_91_0_g51526 , 0.0 ) ).xyz).xyz;
				half3 On20_g51527 = ( localObjectPosition_UNITY_MATRIX_M14_g51526 + PivotsOnly105_g51526 );
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g51527 = On20_g51527;
				#else
				float3 staticSwitch14_g51527 = Off19_g51527;
				#endif
				half3 ObjectData20_g51528 = staticSwitch14_g51527;
				half3 WorldData19_g51528 = Off19_g51527;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51528 = WorldData19_g51528;
				#else
				float3 staticSwitch14_g51528 = ObjectData20_g51528;
				#endif
				float3 temp_output_66_0_g51526 = staticSwitch14_g51528;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g51526 = ( temp_output_66_0_g51526 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g51526 = temp_output_66_0_g51526;
				#endif
				half3 ObjectData20_g51525 = staticSwitch13_g51526;
				half3 WorldData19_g51525 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51525 = WorldData19_g51525;
				#else
				float3 staticSwitch14_g51525 = ObjectData20_g51525;
				#endif
				float3 Position83_g51524 = staticSwitch14_g51525;
				float temp_output_84_0_g51524 = _LayerReactValue;
				float4 lerpResult87_g51524 = lerp( TVE_ReactParams , SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ReactTex, samplerTVE_ReactTex, ( (TVE_ReactCoord).zw + ( (TVE_ReactCoord).xy * (Position83_g51524).xz ) ),temp_output_84_0_g51524, 0.0 ) , TVE_ReactUsage[(int)temp_output_84_0_g51524]);
				half4 Global_React_Params4173_g50723 = lerpResult87_g51524;
				float4 break322_g51522 = Global_React_Params4173_g50723;
				half Interaction_Mask66_g50723 = break322_g51522.z;
				float3 appendResult397_g51522 = (float3(break322_g51522.x , 0.0 , break322_g51522.y));
				float3 temp_output_398_0_g51522 = (appendResult397_g51522*2.0 + -1.0);
				float3 temp_output_339_0_g51522 = ( mul( GetWorldToObjectMatrix(), float4( temp_output_398_0_g51522 , 0.0 ) ).xyz * ase_parentObjectScale );
				half2 Interaction_DirectionOS4158_g50723 = (temp_output_339_0_g51522).xz;
				float lerpResult3307_g50723 = lerp( 1.0 , Motion_Variation3073_g50723 , _InteractionVariation);
				half2 Motion_Interaction53_g50723 = ( Interaction_Amplitude4137_g50723 * Motion_Max_Bending1133_g50723 * Interaction_Mask66_g50723 * Interaction_Mask66_g50723 * Interaction_DirectionOS4158_g50723 * lerpResult3307_g50723 );
				float2 lerpResult109_g50723 = lerp( Motion_Bending2258_g50723 , Motion_Interaction53_g50723 , ( Interaction_Mask66_g50723 * saturate( Interaction_Amplitude4137_g50723 ) ));
				half Mesh_Motion_182_g50723 = inputMesh.ase_texcoord3.x;
				float2 break143_g50723 = ( lerpResult109_g50723 * Mesh_Motion_182_g50723 );
				half Motion_Z190_g50723 = break143_g50723.y;
				half Angle44_g51437 = Motion_Z190_g50723;
				half3 VertexPos40_g51436 = ( VertexPosRotationAxis50_g51437 + ( VertexPosOtherAxis82_g51437 * cos( Angle44_g51437 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g51437 ) * sin( Angle44_g51437 ) ) );
				float3 appendResult74_g51436 = (float3(0.0 , 0.0 , VertexPos40_g51436.z));
				half3 VertexPosRotationAxis50_g51436 = appendResult74_g51436;
				float3 break84_g51436 = VertexPos40_g51436;
				float3 appendResult81_g51436 = (float3(break84_g51436.x , break84_g51436.y , 0.0));
				half3 VertexPosOtherAxis82_g51436 = appendResult81_g51436;
				half Motion_X216_g50723 = break143_g50723.x;
				half Angle44_g51436 = -Motion_X216_g50723;
				float3 Vertex_Motion_Object833_g50723 = ( VertexPosRotationAxis50_g51436 + ( VertexPosOtherAxis82_g51436 * cos( Angle44_g51436 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g51436 ) * sin( Angle44_g51436 ) ) );
				float3 temp_output_3474_0_g50723 = ( PositionOS3588_g50723 - Mesh_PivotsOS2291_g50723 );
				float3 appendResult2047_g50723 = (float3(Motion_Rolling138_g50723 , 0.0 , -Motion_Rolling138_g50723));
				float3 appendResult2043_g50723 = (float3(Motion_X216_g50723 , 0.0 , Motion_Z190_g50723));
				float3 Vertex_Motion_World1118_g50723 = ( ( temp_output_3474_0_g50723 + appendResult2047_g50723 ) + appendResult2043_g50723 );
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch3312_g50723 = Vertex_Motion_World1118_g50723;
				#else
				float3 staticSwitch3312_g50723 = ( Vertex_Motion_Object833_g50723 + ( 0.0 * _VertexDataMode ) );
				#endif
				half Global_Vertex_Size174_g50723 = break322_g51522.w;
				float lerpResult346_g50723 = lerp( 1.0 , Global_Vertex_Size174_g50723 , _GlobalSize);
				float3 appendResult3480_g50723 = (float3(lerpResult346_g50723 , lerpResult346_g50723 , lerpResult346_g50723));
				half3 ObjectData20_g51435 = appendResult3480_g50723;
				half3 _Vector11 = half3(1,1,1);
				half3 WorldData19_g51435 = _Vector11;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51435 = WorldData19_g51435;
				#else
				float3 staticSwitch14_g51435 = ObjectData20_g51435;
				#endif
				half3 Vertex_Size1741_g50723 = staticSwitch14_g51435;
				half3 _Vector5 = half3(1,1,1);
				float3 Vertex_SizeFade1740_g50723 = _Vector5;
				half3 Grass_Coverage2661_g50723 = half3(0,0,0);
				float3 Final_VertexPosition890_g50723 = ( ( staticSwitch3312_g50723 * Vertex_Size1741_g50723 * Vertex_SizeFade1740_g50723 ) + Mesh_PivotsOS2291_g50723 + Grass_Coverage2661_g50723 );
				
				float2 vertexToFrag11_g51423 = ( ( inputMesh.uv0.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				outputPackedVaryingsMeshToPS.ase_texcoord.xy = vertexToFrag11_g51423;
				float2 appendResult21_g51510 = (float2(inputMesh.uv0.z , inputMesh.uv0.w));
				float2 Mesh_DetailCoord3_g50723 = appendResult21_g51510;
				float2 vertexToFrag11_g51446 = ( ( Mesh_DetailCoord3_g50723 * (_SecondUVs).xy ) + (_SecondUVs).zw );
				outputPackedVaryingsMeshToPS.ase_texcoord.zw = vertexToFrag11_g51446;
				half Mesh_DetailMask90_g50723 = inputMesh.ase_color.b;
				float vertexToFrag11_g51546 = ( ( Mesh_DetailMask90_g50723 - 0.5 ) + _DetailMeshValue );
				outputPackedVaryingsMeshToPS.ase_texcoord1.x = vertexToFrag11_g51546;
				float3 ase_worldTangent = TransformObjectToWorldDir(inputMesh.tangentOS.xyz);
				outputPackedVaryingsMeshToPS.ase_texcoord1.yzw = ase_worldTangent;
				float3 ase_worldNormal = TransformObjectToWorldNormal(inputMesh.normalOS);
				outputPackedVaryingsMeshToPS.ase_texcoord2.xyz = ase_worldNormal;
				float ase_vertexTangentSign = inputMesh.tangentOS.w * unity_WorldTransformParams.w;
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				outputPackedVaryingsMeshToPS.ase_texcoord3.xyz = ase_worldBitangent;
				float3 vertexToFrag3890_g50723 = ase_worldPos;
				outputPackedVaryingsMeshToPS.ase_texcoord4.xyz = vertexToFrag3890_g50723;
				
				float2 vertexToFrag11_g51537 = ( ( inputMesh.uv0.xy * (_EmissiveUVs).xy ) + (_EmissiveUVs).zw );
				outputPackedVaryingsMeshToPS.ase_texcoord5.xy = vertexToFrag11_g51537;
				
				float temp_output_7_0_g51545 = TVE_CameraFadeStart;
				float saferPower3976_g50723 = max( saturate( ( ( distance( ase_worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g51545 ) / ( TVE_CameraFadeEnd - temp_output_7_0_g51545 ) ) ) , 0.0001 );
				float temp_output_3976_0_g50723 = pow( saferPower3976_g50723 , _FadeCameraValue );
				float vertexToFrag11_g51542 = temp_output_3976_0_g50723;
				outputPackedVaryingsMeshToPS.ase_texcoord2.w = vertexToFrag11_g51542;
				
				outputPackedVaryingsMeshToPS.ase_color = inputMesh.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord3.w = 0;
				outputPackedVaryingsMeshToPS.ase_texcoord4.w = 0;
				outputPackedVaryingsMeshToPS.ase_texcoord5.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = Final_VertexPosition890_g50723;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS =  inputMesh.normalOS ;
				inputMesh.tangentOS =  inputMesh.tangentOS ;

				float2 uv = float2(0.0, 0.0);
				if (unity_MetaVertexControl.x)
				{
					uv = inputMesh.uv1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				}
				else if (unity_MetaVertexControl.y)
				{
					uv = inputMesh.uv2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				}

				outputPackedVaryingsMeshToPS.positionCS = float4(uv * 2.0 - 1.0, inputMesh.positionOS.z > 0 ? 1.0e-4 : 0.0, 1.0);
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv0 : TEXCOORD0;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.uv0 = v.uv0;
				o.uv1 = v.uv1;
				o.uv2 = v.uv2;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.uv0 = patch[0].uv0 * bary.x + patch[1].uv0 * bary.y + patch[2].uv0 * bary.z;
				o.uv1 = patch[0].uv1 * bary.x + patch[1].uv1 * bary.y + patch[2].uv1 * bary.z;
				o.uv2 = patch[0].uv2 * bary.x + patch[1].uv2 * bary.y + patch[2].uv2 * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			float4 Frag(PackedVaryingsMeshToPS packedInput  ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( packedInput );
				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE(packedInput.cullFace, true, false);
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);
				float3 V = float3(1.0, 1.0, 1.0);

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GlobalSurfaceDescription surfaceDescription = (GlobalSurfaceDescription)0;
				float2 vertexToFrag11_g51423 = packedInput.ase_texcoord.xy;
				half2 Main_UVs15_g50723 = vertexToFrag11_g51423;
				float4 tex2DNode29_g50723 = SAMPLE_TEXTURE2D( _MainAlbedoTex, sampler_MainAlbedoTex, Main_UVs15_g50723 );
				float3 temp_output_51_0_g50723 = ( (_MainColor).rgb * (tex2DNode29_g50723).rgb );
				half3 Main_Albedo99_g50723 = temp_output_51_0_g50723;
				float2 vertexToFrag11_g51446 = packedInput.ase_texcoord.zw;
				half2 Second_UVs17_g50723 = vertexToFrag11_g51446;
				half3 Second_Albedo153_g50723 = (( _SecondColor * SAMPLE_TEXTURE2D( _SecondAlbedoTex, sampler_SecondMaskTex, Second_UVs17_g50723 ) )).rgb;
				float vertexToFrag11_g51546 = packedInput.ase_texcoord1.x;
				float temp_output_3919_0_g50723 = vertexToFrag11_g51546;
				half Blend_Source1540_g50723 = temp_output_3919_0_g50723;
				float4 tex2DNode35_g50723 = SAMPLE_TEXTURE2D( _MainMaskTex, sampler_MainAlbedoTex, Main_UVs15_g50723 );
				half Main_Mask57_g50723 = tex2DNode35_g50723.b;
				float4 tex2DNode33_g50723 = SAMPLE_TEXTURE2D( _SecondMaskTex, sampler_SecondMaskTex, Second_UVs17_g50723 );
				half Second_Mask81_g50723 = tex2DNode33_g50723.b;
				float lerpResult1327_g50723 = lerp( Main_Mask57_g50723 , Second_Mask81_g50723 , _DetailMaskMode);
				float lerpResult4058_g50723 = lerp( lerpResult1327_g50723 , ( 1.0 - lerpResult1327_g50723 ) , _DetailMaskInvertMode);
				float temp_output_7_0_g51551 = _DetailBlendMinValue;
				half Mask_Detail147_g50723 = saturate( ( ( saturate( ( Blend_Source1540_g50723 + ( Blend_Source1540_g50723 * lerpResult4058_g50723 ) ) ) - temp_output_7_0_g51551 ) / ( _DetailBlendMaxValue - temp_output_7_0_g51551 ) ) );
				float3 lerpResult235_g50723 = lerp( Main_Albedo99_g50723 , ( Main_Albedo99_g50723 * Second_Albedo153_g50723 * 4.594794 ) , Mask_Detail147_g50723);
				float3 lerpResult208_g50723 = lerp( Main_Albedo99_g50723 , Second_Albedo153_g50723 , Mask_Detail147_g50723);
				#if defined(TVE_DETAIL_BLEND_OVERLAY)
				float3 staticSwitch4062_g50723 = lerpResult235_g50723;
				#elif defined(TVE_DETAIL_BLEND_REPLACE)
				float3 staticSwitch4062_g50723 = lerpResult208_g50723;
				#else
				float3 staticSwitch4062_g50723 = lerpResult235_g50723;
				#endif
				#if defined(TVE_DETAIL_MODE_OFF)
				float3 staticSwitch255_g50723 = Main_Albedo99_g50723;
				#elif defined(TVE_DETAIL_MODE_ON)
				float3 staticSwitch255_g50723 = staticSwitch4062_g50723;
				#else
				float3 staticSwitch255_g50723 = Main_Albedo99_g50723;
				#endif
				half3 Blend_Albedo265_g50723 = staticSwitch255_g50723;
				half3 Blend_AlbedoTinted2808_g50723 = ( float3(1,1,1) * float3(1,1,1) * float3(1,1,1) * Blend_Albedo265_g50723 );
				half3 Blend_AlbedoColored863_g50723 = Blend_AlbedoTinted2808_g50723;
				half3 Blend_AlbedoAndSubsurface149_g50723 = Blend_AlbedoColored863_g50723;
				half3 Global_OverlayColor1758_g50723 = (TVE_OverlayColor).rgb;
				float3 unpack4112_g50723 = UnpackNormalScale( SAMPLE_TEXTURE2D( _MainNormalTex, sampler_MainAlbedoTex, Main_UVs15_g50723 ), _MainNormalValue );
				unpack4112_g50723.z = lerp( 1, unpack4112_g50723.z, saturate(_MainNormalValue) );
				half3 Main_Normal137_g50723 = unpack4112_g50723;
				float3 ase_worldTangent = packedInput.ase_texcoord1.yzw;
				float3 ase_worldNormal = packedInput.ase_texcoord2.xyz;
				float3 ase_worldBitangent = packedInput.ase_texcoord3.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal4099_g50723 = Main_Normal137_g50723;
				float3 worldNormal4099_g50723 = float3(dot(tanToWorld0,tanNormal4099_g50723), dot(tanToWorld1,tanNormal4099_g50723), dot(tanToWorld2,tanNormal4099_g50723));
				float3 Main_Normal_WS4101_g50723 = worldNormal4099_g50723;
				float lerpResult3567_g50723 = lerp( _OverlayBottomValue , 1.0 , Main_Normal_WS4101_g50723.y);
				half Main_AlbedoTex_G3526_g50723 = tex2DNode29_g50723.g;
				half Second_AlbedoTex_G3581_g50723 = (SAMPLE_TEXTURE2D( _SecondAlbedoTex, sampler_SecondMaskTex, Second_UVs17_g50723 )).g;
				float lerpResult3579_g50723 = lerp( Main_AlbedoTex_G3526_g50723 , Second_AlbedoTex_G3581_g50723 , Mask_Detail147_g50723);
				#if defined(TVE_DETAIL_MODE_OFF)
				float staticSwitch3574_g50723 = Main_AlbedoTex_G3526_g50723;
				#elif defined(TVE_DETAIL_MODE_ON)
				float staticSwitch3574_g50723 = lerpResult3579_g50723;
				#else
				float staticSwitch3574_g50723 = Main_AlbedoTex_G3526_g50723;
				#endif
				float3 vertexToFrag3890_g50723 = packedInput.ase_texcoord4.xyz;
				float3 PositionWS_PerVertex3905_g50723 = vertexToFrag3890_g50723;
				float3 Position82_g51514 = PositionWS_PerVertex3905_g50723;
				float temp_output_84_0_g51514 = _LayerExtrasValue;
				float4 lerpResult88_g51514 = lerp( TVE_ExtrasParams , SAMPLE_TEXTURE2D_ARRAY( TVE_ExtrasTex, samplerTVE_ExtrasTex, ( (TVE_ExtrasCoord).zw + ( (TVE_ExtrasCoord).xy * (Position82_g51514).xz ) ),temp_output_84_0_g51514 ) , TVE_ExtrasUsage[(int)temp_output_84_0_g51514]);
				float4 break89_g51514 = lerpResult88_g51514;
				half Global_Extras_Overlay156_g50723 = break89_g51514.b;
				float temp_output_1025_0_g50723 = ( _GlobalOverlay * Global_Extras_Overlay156_g50723 );
				half Overlay_Commons1365_g50723 = temp_output_1025_0_g50723;
				float temp_output_7_0_g51561 = _OverlayMaskMinValue;
				half Overlay_Mask269_g50723 = saturate( ( ( ( ( ( lerpResult3567_g50723 * 0.5 ) + staticSwitch3574_g50723 ) * Overlay_Commons1365_g50723 ) - temp_output_7_0_g51561 ) / ( _OverlayMaskMaxValue - temp_output_7_0_g51561 ) ) );
				float3 lerpResult336_g50723 = lerp( Blend_AlbedoAndSubsurface149_g50723 , Global_OverlayColor1758_g50723 , Overlay_Mask269_g50723);
				half3 Final_Albedo359_g50723 = lerpResult336_g50723;
				float3 temp_cast_3 = (1.0).xxx;
				float Mesh_Occlusion318_g50723 = packedInput.ase_color.g;
				float temp_output_7_0_g51557 = _VertexOcclusionMinValue;
				float3 lerpResult2945_g50723 = lerp( (_VertexOcclusionColor).rgb , temp_cast_3 , saturate( ( ( Mesh_Occlusion318_g50723 - temp_output_7_0_g51557 ) / ( _VertexOcclusionMaxValue - temp_output_7_0_g51557 ) ) ));
				float3 Vertex_Occlusion648_g50723 = lerpResult2945_g50723;
				
				float3 unpack4114_g50723 = UnpackNormalScale( SAMPLE_TEXTURE2D( _SecondNormalTex, sampler_SecondMaskTex, Second_UVs17_g50723 ), _SecondNormalValue );
				unpack4114_g50723.z = lerp( 1, unpack4114_g50723.z, saturate(_SecondNormalValue) );
				half3 Second_Normal179_g50723 = unpack4114_g50723;
				float3 lerpResult230_g50723 = lerp( float3( 0,0,1 ) , Second_Normal179_g50723 , Mask_Detail147_g50723);
				float3 lerpResult3372_g50723 = lerp( float3( 0,0,1 ) , Main_Normal137_g50723 , _DetailNormalValue);
				float3 lerpResult3376_g50723 = lerp( Main_Normal137_g50723 , BlendNormal( lerpResult3372_g50723 , Second_Normal179_g50723 ) , Mask_Detail147_g50723);
				#if defined(TVE_DETAIL_BLEND_OVERLAY)
				float3 staticSwitch4063_g50723 = BlendNormal( Main_Normal137_g50723 , lerpResult230_g50723 );
				#elif defined(TVE_DETAIL_BLEND_REPLACE)
				float3 staticSwitch4063_g50723 = lerpResult3376_g50723;
				#else
				float3 staticSwitch4063_g50723 = BlendNormal( Main_Normal137_g50723 , lerpResult230_g50723 );
				#endif
				#if defined(TVE_DETAIL_MODE_OFF)
				float3 staticSwitch267_g50723 = Main_Normal137_g50723;
				#elif defined(TVE_DETAIL_MODE_ON)
				float3 staticSwitch267_g50723 = staticSwitch4063_g50723;
				#else
				float3 staticSwitch267_g50723 = Main_Normal137_g50723;
				#endif
				float3 temp_output_13_0_g51558 = staticSwitch267_g50723;
				float3 switchResult12_g51558 = (((isFrontFace>0)?(temp_output_13_0_g51558):(( temp_output_13_0_g51558 * _render_normals_options ))));
				half3 Blend_Normal312_g50723 = switchResult12_g51558;
				half3 Final_Normal366_g50723 = Blend_Normal312_g50723;
				
				float3 temp_cast_5 = (( 0.04 * _RenderSpecular )).xxx;
				
				float3 hdEmission4189_g50723 = ASEGetEmissionHDRColor(_EmissiveColor.rgb,_EmissiveIntensityParams.x,_EmissiveExposureValue,GetInverseCurrentExposureMultiplier());
				float2 vertexToFrag11_g51537 = packedInput.ase_texcoord5.xy;
				half2 Emissive_UVs2468_g50723 = vertexToFrag11_g51537;
				half3 Final_Emissive2476_g50723 = ( (( hdEmission4189_g50723 * SAMPLE_TEXTURE2D( _EmissiveTex, sampler_EmissiveTex, Emissive_UVs2468_g50723 ) )).rgb * TVE_EmissiveValue );
				
				half Main_Smoothness227_g50723 = ( tex2DNode35_g50723.a * _MainSmoothnessValue );
				half Second_Smoothness236_g50723 = ( tex2DNode33_g50723.a * _SecondSmoothnessValue );
				float lerpResult266_g50723 = lerp( Main_Smoothness227_g50723 , Second_Smoothness236_g50723 , Mask_Detail147_g50723);
				#if defined(TVE_DETAIL_BLEND_OVERLAY)
				float staticSwitch4065_g50723 = Main_Smoothness227_g50723;
				#elif defined(TVE_DETAIL_BLEND_REPLACE)
				float staticSwitch4065_g50723 = lerpResult266_g50723;
				#else
				float staticSwitch4065_g50723 = Main_Smoothness227_g50723;
				#endif
				#if defined(TVE_DETAIL_MODE_OFF)
				float staticSwitch297_g50723 = Main_Smoothness227_g50723;
				#elif defined(TVE_DETAIL_MODE_ON)
				float staticSwitch297_g50723 = staticSwitch4065_g50723;
				#else
				float staticSwitch297_g50723 = Main_Smoothness227_g50723;
				#endif
				half Blend_Smoothness314_g50723 = staticSwitch297_g50723;
				half Global_OverlaySmoothness311_g50723 = TVE_OverlaySmoothness;
				float lerpResult343_g50723 = lerp( Blend_Smoothness314_g50723 , Global_OverlaySmoothness311_g50723 , Overlay_Mask269_g50723);
				half Final_Smoothness371_g50723 = lerpResult343_g50723;
				half Global_Extras_Wetness305_g50723 = break89_g51514.g;
				float lerpResult3673_g50723 = lerp( 0.0 , Global_Extras_Wetness305_g50723 , _GlobalWetness);
				half Final_SmoothnessAndWetness4130_g50723 = saturate( ( Final_Smoothness371_g50723 + lerpResult3673_g50723 ) );
				
				float lerpResult240_g50723 = lerp( 1.0 , tex2DNode35_g50723.g , _MainOcclusionValue);
				half Main_Occlusion247_g50723 = lerpResult240_g50723;
				float lerpResult239_g50723 = lerp( 1.0 , tex2DNode33_g50723.g , _SecondOcclusionValue);
				half Second_Occlusion251_g50723 = lerpResult239_g50723;
				float lerpResult294_g50723 = lerp( Main_Occlusion247_g50723 , Second_Occlusion251_g50723 , Mask_Detail147_g50723);
				#if defined(TVE_DETAIL_BLEND_OVERLAY)
				float staticSwitch4066_g50723 = Main_Occlusion247_g50723;
				#elif defined(TVE_DETAIL_BLEND_REPLACE)
				float staticSwitch4066_g50723 = lerpResult294_g50723;
				#else
				float staticSwitch4066_g50723 = Main_Occlusion247_g50723;
				#endif
				#if defined(TVE_DETAIL_MODE_OFF)
				float staticSwitch310_g50723 = Main_Occlusion247_g50723;
				#elif defined(TVE_DETAIL_MODE_ON)
				float staticSwitch310_g50723 = staticSwitch4066_g50723;
				#else
				float staticSwitch310_g50723 = Main_Occlusion247_g50723;
				#endif
				half Blend_Occlusion323_g50723 = staticSwitch310_g50723;
				
				float localCustomAlphaClip3735_g50723 = ( 0.0 );
				float vertexToFrag11_g51542 = packedInput.ase_texcoord2.w;
				half Fade_Camera3743_g50723 = vertexToFrag11_g51542;
				half Final_AlphaFade3727_g50723 = ( 1.0 * Fade_Camera3743_g50723 );
				float temp_output_41_0_g51554 = Final_AlphaFade3727_g50723;
				float Main_Alpha316_g50723 = ( _MainColor.a * tex2DNode29_g50723.a );
				half AlphaTreshold2132_g50723 = _Cutoff;
				#ifdef TVE_ALPHA_CLIP
				float staticSwitch3792_g50723 = ( Main_Alpha316_g50723 - ( AlphaTreshold2132_g50723 - 0.5 ) );
				#else
				float staticSwitch3792_g50723 = Main_Alpha316_g50723;
				#endif
				half Final_Alpha3754_g50723 = staticSwitch3792_g50723;
				float temp_output_661_0_g50723 = ( saturate( ( temp_output_41_0_g51554 + ( temp_output_41_0_g51554 * SAMPLE_TEXTURE3D( TVE_ScreenTex3D, samplerTVE_ScreenTex3D, ( TVE_ScreenTexCoord * PositionWS_PerVertex3905_g50723 ) ).r ) ) ) * Final_Alpha3754_g50723 );
				float Alpha3735_g50723 = temp_output_661_0_g50723;
				float Treshold3735_g50723 = 0.5;
				{
				#if TVE_ALPHA_CLIP
				clip(Alpha3735_g50723 - Treshold3735_g50723);
				#endif
				}
				half Final_Clip914_g50723 = saturate( Alpha3735_g50723 );
				
				surfaceDescription.Albedo = ( Final_Albedo359_g50723 * Vertex_Occlusion648_g50723 );
				surfaceDescription.Normal = Final_Normal366_g50723;
				surfaceDescription.BentNormal = float3( 0, 0, 1 );
				surfaceDescription.CoatMask = 0;
				surfaceDescription.Metallic = 0;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = temp_cast_5;
				#endif

				surfaceDescription.Emission = Final_Emissive2476_g50723;
				surfaceDescription.Smoothness = Final_SmoothnessAndWetness4130_g50723;
				surfaceDescription.Occlusion = Blend_Occlusion323_g50723;
				surfaceDescription.Alpha = Final_Clip914_g50723;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				#endif

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceDescription.SpecularAAScreenSpaceVariance = 0;
				surfaceDescription.SpecularAAThreshold = 0;
				#endif

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceDescription.SpecularOcclusion = 0;
				#endif

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceDescription.Thickness = 1;
				#endif

				#ifdef _HAS_REFRACTION
				surfaceDescription.RefractionIndex = 1;
				surfaceDescription.RefractionColor = float3( 1, 1, 1 );
				surfaceDescription.RefractionDistance = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceDescription.SubsurfaceMask = 1;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceDescription.DiffusionProfile = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceDescription.Anisotropy = 1;
				surfaceDescription.Tangent = float3( 1, 0, 0 );
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceDescription.IridescenceMask = 0;
				surfaceDescription.IridescenceThickness = 0;
				#endif

				GetSurfaceAndBuiltinData(surfaceDescription,input, V, posInput, surfaceData, builtinData);

				BSDFData bsdfData = ConvertSurfaceDataToBSDFData(input.positionSS.xy, surfaceData);
				LightTransportData lightTransportData = GetLightTransportData(surfaceData, builtinData, bsdfData);

				float4 res = float4(0.0, 0.0, 0.0, 1.0);
				if (unity_MetaFragmentControl.x)
				{
					res.rgb = clamp(pow(abs(lightTransportData.diffuseColor), saturate(unity_OneOverOutputBoost)), 0, unity_MaxOutputValue);
				}

				if (unity_MetaFragmentControl.y)
				{
					res.rgb = lightTransportData.emissiveColor;
				}

				return res;
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }

			Cull [_CullMode]
			ZWrite On
			ZClip [_ZClip]
			ZTest LEqual
			ColorMask 0

			HLSLPROGRAM

			#define ASE_NEED_CULLFACE 1
			#define _MATERIAL_FEATURE_SPECULAR_COLOR 1
			#define _ENERGY_CONSERVING_SPECULAR 1
			#pragma multi_compile _ DOTS_INSTANCING_ON
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define _AMBIENT_OCCLUSION 1
			#define HAVE_MESH_MODIFICATION
			#define ASE_SRP_VERSION 100202
			#define ASE_USING_SAMPLING_MACROS 1


			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT
			#pragma shader_feature_local _DOUBLESIDED_ON
			#pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
			#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT
			#pragma shader_feature_local _ALPHATEST_ON

			#define SHADERPASS SHADERPASS_SHADOWS

			#pragma vertex Vert
			#pragma fragment Frag

			//#define UNITY_MATERIAL_LIT

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"

			//#define USE_LEGACY_UNITY_MATRIX_VARIABLES

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#ifdef DEBUG_DISPLAY
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#endif

			CBUFFER_START( UnityPerMaterial )
			half4 _DetailBlendRemap;
			half4 _OverlayMaskRemap;
			float4 _NoiseMaskRemap;
			half4 _SubsurfaceMaskRemap;
			half4 _VertexOcclusionRemap;
			float4 _MaxBoundsInfo;
			float4 _SubsurfaceDiffusion_asset;
			half4 _MainColor;
			half4 _MainUVs;
			half4 _SecondColor;
			float4 _GradientMaskRemap;
			float4 _SubsurfaceDiffusion_Asset;
			float4 _Color;
			half4 _VertexOcclusionColor;
			half4 _SecondUVs;
			half4 _ColorsMaskRemap;
			float4 _EmissiveIntensityParams;
			half4 _EmissiveColor;
			half4 _EmissiveUVs;
			half3 _render_normals_options;
			half _MotionVariation_10;
			float _MotionSpeed_10;
			half _MotionAmplitude_10;
			half _MotionScale_20;
			half _MotionVariation_20;
			half _MotionSpeed_20;
			half _VertexRollingMode;
			half _LayerMotionValue;
			half _vertex_pivot_mode;
			half _MotionAmplitude_20;
			half _render_src;
			half _IsStandardShader;
			half _MainSmoothnessValue;
			half _SecondSmoothnessValue;
			half _GlobalWetness;
			half _MainOcclusionValue;
			float _MotionScale_10;
			half _InteractionAmplitude;
			half _EmissiveExposureValue;
			half _VertexOcclusionMinValue;
			half _OverlayMaskMaxValue;
			half _OverlayMaskMinValue;
			half _SecondNormalValue;
			half _LayerExtrasValue;
			half _GlobalOverlay;
			half _DetailNormalValue;
			half _MainNormalValue;
			half _OverlayBottomValue;
			half _DetailBlendMaxValue;
			half _DetailBlendMinValue;
			half _DetailMaskInvertMode;
			half _DetailMaskMode;
			half _DetailMeshValue;
			half _RenderSpecular;
			half _GlobalSize;
			half _VertexDataMode;
			half _InteractionVariation;
			half _LayerReactValue;
			half _VertexOcclusionMaxValue;
			half _render_zw;
			half _IsVersion;
			half _RenderNormals;
			half _VariationMotionMessage;
			half _RenderClip;
			half _Cutoff;
			half _MotionSpace;
			half _GradientCat;
			half _VertexVariationMode;
			half _RenderDecals;
			half _TranslucencyDirectValue;
			half _NoiseCat;
			half _SubsurfaceCat;
			half _LayersSpace;
			half _RenderZWrite;
			half _DetailMode;
			half _EmissiveCat;
			half _RenderMode;
			half _RenderSSR;
			half _SizeFadeCat;
			half _render_dst;
			half _render_cull;
			half _IsBarkShader;
			half _TranslucencyIntensityValue;
			half _TranslucencyNormalValue;
			half _FadeSpace;
			half _DetailSpace;
			half _TranslucencyShadowValue;
			half _EmissiveFlagMode;
			half _TranslucencyHDMessage;
			half _OcclusionCat;
			half _RenderPriority;
			half _TranslucencyAmbientValue;
			half _DetailCat;
			half _VertexMasksMode;
			half _SizeFadeMessage;
			half _MainCat;
			half _SecondOcclusionValue;
			half _ReceiveSpace;
			half _PerspectiveCat;
			half _VariationGlobalsMessage;
			float _SubsurfaceDiffusion;
			half _RenderingCat;
			half _DetailBlendMode;
			half _TranslucencyScatteringValue;
			half _IsTVEShader;
			half _GlobalCat;
			half _RenderCull;
			half _DetailTypeMode;
			half _MotionCat;
			half _FadeCameraValue;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			TEXTURE2D(_MainTex);
			SAMPLER(sampler_MainTex);
			TEXTURE2D(_BumpMap);
			SAMPLER(sampler_BumpMap);
			half4 TVE_MotionParams;
			TEXTURE2D_ARRAY(TVE_MotionTex);
			half4 TVE_MotionCoord;
			SAMPLER(samplerTVE_MotionTex);
			float TVE_MotionUsage[9];
			TEXTURE2D(TVE_NoiseTex);
			float2 TVE_NoiseSpeed_Vegetation;
			float2 TVE_NoiseSpeed_Grass;
			half TVE_NoiseSize_Vegetation;
			half TVE_NoiseSize_Grass;
			SAMPLER(samplerTVE_NoiseTex);
			half4 TVE_ReactParams;
			TEXTURE2D_ARRAY(TVE_ReactTex);
			half4 TVE_ReactCoord;
			SAMPLER(samplerTVE_ReactTex);
			float TVE_ReactUsage[9];
			half TVE_CameraFadeStart;
			half TVE_CameraFadeEnd;
			TEXTURE3D(TVE_ScreenTex3D);
			half TVE_ScreenTexCoord;
			SAMPLER(samplerTVE_ScreenTex3D);
			TEXTURE2D(_MainAlbedoTex);
			SAMPLER(sampler_MainAlbedoTex);


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_VERT_POSITION
			#pragma shader_feature_local TVE_ALPHA_CLIP
			#pragma shader_feature_local TVE_VERTEX_DATA_BATCHED
			//TVE Injection Defines
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			//TVE Pipeline Defines
			#define THE_VEGETATION_ENGINE
			#define IS_HD_PIPELINE
			//TVE HD Pipeline Defines
			#pragma shader_feature_local _DISABLE_DECALS
			#pragma shader_feature_local _DISABLE_SSR
			//TVE Shader Type Defines
			#define TVE_IS_VEGETATION_SHADER


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
				#define ASE_NEED_CULLFACE 1
			#endif

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 interp00 : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			float3 ObjectPosition_UNITY_MATRIX_M(  )
			{
				return float3(UNITY_MATRIX_M[0].w, UNITY_MATRIX_M[1].w, UNITY_MATRIX_M[2].w );
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout AlphaSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// surface data

				// refraction
				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif


				// material features
				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				#endif
				#ifdef ASE_LIT_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				// others
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				// normals
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );
				
				// decals
				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs.tangentToWorld[2], surfaceDescription.Alpha);
					ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
				}
				#endif

				bentNormalWS = surfaceData.normalWS;
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#endif

				// debug
				#if defined(DEBUG_DISPLAY)
				if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				{
					surfaceData.metallic = 0;
				}
				ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif
			}

			void GetSurfaceAndBuiltinData(AlphaSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				ApplyDoubleSidedFlipOrMirror( fragInputs, doubleSidedConstants );

				#ifdef _ALPHATEST_ON
				#ifdef _ALPHATEST_SHADOW_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdShadow );
				#else
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif
				#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS );

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;
				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				float3 PositionOS3588_g50723 = inputMesh.positionOS;
				half3 _Vector1 = half3(0,0,0);
				half3 Mesh_PivotsOS2291_g50723 = _Vector1;
				float3 temp_output_2283_0_g50723 = ( PositionOS3588_g50723 - Mesh_PivotsOS2291_g50723 );
				half3 VertexPos40_g51512 = temp_output_2283_0_g50723;
				float3 appendResult74_g51512 = (float3(0.0 , VertexPos40_g51512.y , 0.0));
				float3 VertexPosRotationAxis50_g51512 = appendResult74_g51512;
				float3 break84_g51512 = VertexPos40_g51512;
				float3 appendResult81_g51512 = (float3(break84_g51512.x , 0.0 , break84_g51512.z));
				float3 VertexPosOtherAxis82_g51512 = appendResult81_g51512;
				float ObjectData20_g51480 = 3.14;
				float Bounds_Radius121_g50723 = _MaxBoundsInfo.x;
				float WorldData19_g51480 = Bounds_Radius121_g50723;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g51480 = WorldData19_g51480;
				#else
				float staticSwitch14_g51480 = ObjectData20_g51480;
				#endif
				float Motion_Max_Rolling1137_g50723 = staticSwitch14_g51480;
				float3 localObjectPosition_UNITY_MATRIX_M14_g51483 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g51484 = localObjectPosition_UNITY_MATRIX_M14_g51483;
				float3 appendResult93_g51483 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				float3 temp_output_91_0_g51483 = ( appendResult93_g51483 * _vertex_pivot_mode );
				float3 PivotsOnly105_g51483 = (mul( GetObjectToWorldMatrix(), float4( temp_output_91_0_g51483 , 0.0 ) ).xyz).xyz;
				half3 On20_g51484 = ( localObjectPosition_UNITY_MATRIX_M14_g51483 + PivotsOnly105_g51483 );
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g51484 = On20_g51484;
				#else
				float3 staticSwitch14_g51484 = Off19_g51484;
				#endif
				half3 ObjectData20_g51485 = staticSwitch14_g51484;
				half3 WorldData19_g51485 = Off19_g51484;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51485 = WorldData19_g51485;
				#else
				float3 staticSwitch14_g51485 = ObjectData20_g51485;
				#endif
				float3 temp_output_66_0_g51483 = staticSwitch14_g51485;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g51483 = ( temp_output_66_0_g51483 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g51483 = temp_output_66_0_g51483;
				#endif
				half3 ObjectData20_g51482 = staticSwitch13_g51483;
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.positionOS).xyz ) );
				half3 WorldData19_g51482 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51482 = WorldData19_g51482;
				#else
				float3 staticSwitch14_g51482 = ObjectData20_g51482;
				#endif
				float3 Position83_g51481 = staticSwitch14_g51482;
				float temp_output_84_0_g51481 = _LayerMotionValue;
				float4 lerpResult87_g51481 = lerp( TVE_MotionParams , SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_MotionTex, samplerTVE_MotionTex, ( (TVE_MotionCoord).zw + ( (TVE_MotionCoord).xy * (Position83_g51481).xz ) ),temp_output_84_0_g51481, 0.0 ) , TVE_MotionUsage[(int)temp_output_84_0_g51481]);
				half4 Global_Motion_Params3909_g50723 = lerpResult87_g51481;
				float4 break322_g51421 = Global_Motion_Params3909_g50723;
				half Wind_Power369_g51421 = break322_g51421.z;
				float lerpResult410_g51421 = lerp( 0.2 , 1.0 , Wind_Power369_g51421);
				half Wind_Power_203109_g50723 = lerpResult410_g51421;
				half Mesh_Motion_260_g50723 = inputMesh.ase_texcoord3.y;
				#ifdef TVE_IS_GRASS_SHADER
				float2 staticSwitch160_g51439 = TVE_NoiseSpeed_Grass;
				#else
				float2 staticSwitch160_g51439 = TVE_NoiseSpeed_Vegetation;
				#endif
				float3 localObjectPosition_UNITY_MATRIX_M14_g51441 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g51442 = localObjectPosition_UNITY_MATRIX_M14_g51441;
				float3 appendResult93_g51441 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				float3 temp_output_91_0_g51441 = ( appendResult93_g51441 * _vertex_pivot_mode );
				float3 PivotsOnly105_g51441 = (mul( GetObjectToWorldMatrix(), float4( temp_output_91_0_g51441 , 0.0 ) ).xyz).xyz;
				half3 On20_g51442 = ( localObjectPosition_UNITY_MATRIX_M14_g51441 + PivotsOnly105_g51441 );
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g51442 = On20_g51442;
				#else
				float3 staticSwitch14_g51442 = Off19_g51442;
				#endif
				half3 ObjectData20_g51443 = staticSwitch14_g51442;
				half3 WorldData19_g51443 = Off19_g51442;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51443 = WorldData19_g51443;
				#else
				float3 staticSwitch14_g51443 = ObjectData20_g51443;
				#endif
				float3 temp_output_66_0_g51441 = staticSwitch14_g51443;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g51441 = ( temp_output_66_0_g51441 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g51441 = temp_output_66_0_g51441;
				#endif
				half3 ObjectData20_g51440 = staticSwitch13_g51441;
				half3 WorldData19_g51440 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51440 = WorldData19_g51440;
				#else
				float3 staticSwitch14_g51440 = ObjectData20_g51440;
				#endif
				#ifdef TVE_IS_GRASS_SHADER
				float2 staticSwitch164_g51439 = (ase_worldPos).xz;
				#else
				float2 staticSwitch164_g51439 = (staticSwitch14_g51440).xz;
				#endif
				#ifdef TVE_IS_GRASS_SHADER
				float staticSwitch161_g51439 = TVE_NoiseSize_Grass;
				#else
				float staticSwitch161_g51439 = TVE_NoiseSize_Vegetation;
				#endif
				float2 panner73_g51439 = ( _TimeParameters.x * staticSwitch160_g51439 + ( staticSwitch164_g51439 * staticSwitch161_g51439 ));
				float4 tex2DNode75_g51439 = SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, samplerTVE_NoiseTex, panner73_g51439, 0.0 );
				float4 saferPower77_g51439 = max( abs( tex2DNode75_g51439 ) , 0.0001 );
				half Wind_Power2223_g50723 = Wind_Power369_g51421;
				float temp_output_167_0_g51439 = Wind_Power2223_g50723;
				float lerpResult168_g51439 = lerp( 1.5 , 0.25 , temp_output_167_0_g51439);
				float4 temp_cast_7 = (lerpResult168_g51439).xxxx;
				float4 break142_g51439 = pow( saferPower77_g51439 , temp_cast_7 );
				half Global_NoiseTex_R34_g50723 = break142_g51439.r;
				half Input_Speed62_g51479 = _MotionSpeed_20;
				float mulTime354_g51479 = _TimeParameters.x * Input_Speed62_g51479;
				float3 localObjectPosition_UNITY_MATRIX_M14_g51497 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g51498 = localObjectPosition_UNITY_MATRIX_M14_g51497;
				float3 appendResult93_g51497 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				float3 temp_output_91_0_g51497 = ( appendResult93_g51497 * _vertex_pivot_mode );
				float3 PivotsOnly105_g51497 = (mul( GetObjectToWorldMatrix(), float4( temp_output_91_0_g51497 , 0.0 ) ).xyz).xyz;
				half3 On20_g51498 = ( localObjectPosition_UNITY_MATRIX_M14_g51497 + PivotsOnly105_g51497 );
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g51498 = On20_g51498;
				#else
				float3 staticSwitch14_g51498 = Off19_g51498;
				#endif
				half3 ObjectData20_g51499 = staticSwitch14_g51498;
				half3 WorldData19_g51499 = Off19_g51498;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51499 = WorldData19_g51499;
				#else
				float3 staticSwitch14_g51499 = ObjectData20_g51499;
				#endif
				float3 temp_output_66_0_g51497 = staticSwitch14_g51499;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g51497 = ( temp_output_66_0_g51497 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g51497 = temp_output_66_0_g51497;
				#endif
				float3 break9_g51497 = staticSwitch13_g51497;
				half Variation_Complex102_g51495 = frac( ( inputMesh.ase_color.r + ( break9_g51497.x + break9_g51497.z ) ) );
				float ObjectData20_g51496 = Variation_Complex102_g51495;
				half Variation_Simple105_g51495 = inputMesh.ase_color.r;
				float WorldData19_g51496 = Variation_Simple105_g51495;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g51496 = WorldData19_g51496;
				#else
				float staticSwitch14_g51496 = ObjectData20_g51496;
				#endif
				half Motion_Variation3073_g50723 = staticSwitch14_g51496;
				float temp_output_3154_0_g50723 = ( _MotionVariation_20 * Motion_Variation3073_g50723 );
				float Motion_Variation284_g51479 = temp_output_3154_0_g50723;
				float Motion_Scale287_g51479 = ( _MotionScale_20 * ase_worldPos.x );
				half Variation127_g51521 = temp_output_3154_0_g50723;
				float lerpResult110_g51521 = lerp( ceil( saturate( ( frac( ( Variation127_g51521 + 0.3576 ) ) - 0.6 ) ) ) , ceil( saturate( ( frac( ( Variation127_g51521 + 0.1715 ) ) - 0.4 ) ) ) , (sin( _TimeParameters.x )*0.5 + 0.5));
				float temp_output_112_0_g51521 = Wind_Power2223_g50723;
				float lerpResult111_g51521 = lerp( lerpResult110_g51521 , 1.0 , ( temp_output_112_0_g51521 * temp_output_112_0_g51521 * temp_output_112_0_g51521 * temp_output_112_0_g51521 ));
				float lerpResult126_g51521 = lerp( lerpResult111_g51521 , 1.0 , ( 1.0 - saturate( Variation127_g51521 ) ));
				half Motion_Rolling138_g50723 = ( ( _MotionAmplitude_20 * Motion_Max_Rolling1137_g50723 ) * ( Wind_Power_203109_g50723 * Mesh_Motion_260_g50723 * Global_NoiseTex_R34_g50723 * _VertexRollingMode ) * sin( ( mulTime354_g51479 + Motion_Variation284_g51479 + Motion_Scale287_g51479 ) ) * lerpResult126_g51521 );
				half Angle44_g51512 = Motion_Rolling138_g50723;
				half3 VertexPos40_g51437 = ( VertexPosRotationAxis50_g51512 + ( VertexPosOtherAxis82_g51512 * cos( Angle44_g51512 ) ) + ( cross( float3(0,1,0) , VertexPosOtherAxis82_g51512 ) * sin( Angle44_g51512 ) ) );
				float3 appendResult74_g51437 = (float3(VertexPos40_g51437.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g51437 = appendResult74_g51437;
				float3 break84_g51437 = VertexPos40_g51437;
				float3 appendResult81_g51437 = (float3(0.0 , break84_g51437.y , break84_g51437.z));
				half3 VertexPosOtherAxis82_g51437 = appendResult81_g51437;
				float ObjectData20_g51438 = 3.14;
				float Bounds_Height374_g50723 = _MaxBoundsInfo.y;
				float WorldData19_g51438 = ( Bounds_Height374_g50723 * 3.14 );
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g51438 = WorldData19_g51438;
				#else
				float staticSwitch14_g51438 = ObjectData20_g51438;
				#endif
				float Motion_Max_Bending1133_g50723 = staticSwitch14_g51438;
				float lerpResult376_g51421 = lerp( 0.1 , 1.0 , Wind_Power369_g51421);
				half Wind_Power_103106_g50723 = lerpResult376_g51421;
				float3 appendResult397_g51421 = (float3(break322_g51421.x , 0.0 , break322_g51421.y));
				float3 temp_output_398_0_g51421 = (appendResult397_g51421*2.0 + -1.0);
				float3 ase_parentObjectScale = ( 1.0 / float3( length( GetWorldToObjectMatrix()[ 0 ].xyz ), length( GetWorldToObjectMatrix()[ 1 ].xyz ), length( GetWorldToObjectMatrix()[ 2 ].xyz ) ) );
				float3 temp_output_339_0_g51421 = ( mul( GetWorldToObjectMatrix(), float4( temp_output_398_0_g51421 , 0.0 ) ).xyz * ase_parentObjectScale );
				half2 Wind_DirectionOS39_g50723 = (temp_output_339_0_g51421).xz;
				half Input_Speed62_g51477 = _MotionSpeed_10;
				float mulTime373_g51477 = _TimeParameters.x * Input_Speed62_g51477;
				half Motion_Variation284_g51477 = ( _MotionVariation_10 * Motion_Variation3073_g50723 );
				float2 appendResult344_g51477 = (float2(ase_worldPos.x , ase_worldPos.z));
				float2 Motion_Scale287_g51477 = ( _MotionScale_10 * appendResult344_g51477 );
				half2 Sine_MinusOneToOne281_g51477 = sin( ( mulTime373_g51477 + Motion_Variation284_g51477 + Motion_Scale287_g51477 ) );
				float2 temp_cast_12 = (1.0).xx;
				half Input_Turbulence327_g51477 = Global_NoiseTex_R34_g50723;
				float2 lerpResult321_g51477 = lerp( Sine_MinusOneToOne281_g51477 , temp_cast_12 , Input_Turbulence327_g51477);
				half2 Motion_Bending2258_g50723 = ( ( _MotionAmplitude_10 * Motion_Max_Bending1133_g50723 ) * Wind_Power_103106_g50723 * Wind_DirectionOS39_g50723 * Global_NoiseTex_R34_g50723 * lerpResult321_g51477 );
				half Interaction_Amplitude4137_g50723 = _InteractionAmplitude;
				float3 localObjectPosition_UNITY_MATRIX_M14_g51526 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g51527 = localObjectPosition_UNITY_MATRIX_M14_g51526;
				float3 appendResult93_g51526 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				float3 temp_output_91_0_g51526 = ( appendResult93_g51526 * _vertex_pivot_mode );
				float3 PivotsOnly105_g51526 = (mul( GetObjectToWorldMatrix(), float4( temp_output_91_0_g51526 , 0.0 ) ).xyz).xyz;
				half3 On20_g51527 = ( localObjectPosition_UNITY_MATRIX_M14_g51526 + PivotsOnly105_g51526 );
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g51527 = On20_g51527;
				#else
				float3 staticSwitch14_g51527 = Off19_g51527;
				#endif
				half3 ObjectData20_g51528 = staticSwitch14_g51527;
				half3 WorldData19_g51528 = Off19_g51527;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51528 = WorldData19_g51528;
				#else
				float3 staticSwitch14_g51528 = ObjectData20_g51528;
				#endif
				float3 temp_output_66_0_g51526 = staticSwitch14_g51528;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g51526 = ( temp_output_66_0_g51526 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g51526 = temp_output_66_0_g51526;
				#endif
				half3 ObjectData20_g51525 = staticSwitch13_g51526;
				half3 WorldData19_g51525 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51525 = WorldData19_g51525;
				#else
				float3 staticSwitch14_g51525 = ObjectData20_g51525;
				#endif
				float3 Position83_g51524 = staticSwitch14_g51525;
				float temp_output_84_0_g51524 = _LayerReactValue;
				float4 lerpResult87_g51524 = lerp( TVE_ReactParams , SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ReactTex, samplerTVE_ReactTex, ( (TVE_ReactCoord).zw + ( (TVE_ReactCoord).xy * (Position83_g51524).xz ) ),temp_output_84_0_g51524, 0.0 ) , TVE_ReactUsage[(int)temp_output_84_0_g51524]);
				half4 Global_React_Params4173_g50723 = lerpResult87_g51524;
				float4 break322_g51522 = Global_React_Params4173_g50723;
				half Interaction_Mask66_g50723 = break322_g51522.z;
				float3 appendResult397_g51522 = (float3(break322_g51522.x , 0.0 , break322_g51522.y));
				float3 temp_output_398_0_g51522 = (appendResult397_g51522*2.0 + -1.0);
				float3 temp_output_339_0_g51522 = ( mul( GetWorldToObjectMatrix(), float4( temp_output_398_0_g51522 , 0.0 ) ).xyz * ase_parentObjectScale );
				half2 Interaction_DirectionOS4158_g50723 = (temp_output_339_0_g51522).xz;
				float lerpResult3307_g50723 = lerp( 1.0 , Motion_Variation3073_g50723 , _InteractionVariation);
				half2 Motion_Interaction53_g50723 = ( Interaction_Amplitude4137_g50723 * Motion_Max_Bending1133_g50723 * Interaction_Mask66_g50723 * Interaction_Mask66_g50723 * Interaction_DirectionOS4158_g50723 * lerpResult3307_g50723 );
				float2 lerpResult109_g50723 = lerp( Motion_Bending2258_g50723 , Motion_Interaction53_g50723 , ( Interaction_Mask66_g50723 * saturate( Interaction_Amplitude4137_g50723 ) ));
				half Mesh_Motion_182_g50723 = inputMesh.ase_texcoord3.x;
				float2 break143_g50723 = ( lerpResult109_g50723 * Mesh_Motion_182_g50723 );
				half Motion_Z190_g50723 = break143_g50723.y;
				half Angle44_g51437 = Motion_Z190_g50723;
				half3 VertexPos40_g51436 = ( VertexPosRotationAxis50_g51437 + ( VertexPosOtherAxis82_g51437 * cos( Angle44_g51437 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g51437 ) * sin( Angle44_g51437 ) ) );
				float3 appendResult74_g51436 = (float3(0.0 , 0.0 , VertexPos40_g51436.z));
				half3 VertexPosRotationAxis50_g51436 = appendResult74_g51436;
				float3 break84_g51436 = VertexPos40_g51436;
				float3 appendResult81_g51436 = (float3(break84_g51436.x , break84_g51436.y , 0.0));
				half3 VertexPosOtherAxis82_g51436 = appendResult81_g51436;
				half Motion_X216_g50723 = break143_g50723.x;
				half Angle44_g51436 = -Motion_X216_g50723;
				float3 Vertex_Motion_Object833_g50723 = ( VertexPosRotationAxis50_g51436 + ( VertexPosOtherAxis82_g51436 * cos( Angle44_g51436 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g51436 ) * sin( Angle44_g51436 ) ) );
				float3 temp_output_3474_0_g50723 = ( PositionOS3588_g50723 - Mesh_PivotsOS2291_g50723 );
				float3 appendResult2047_g50723 = (float3(Motion_Rolling138_g50723 , 0.0 , -Motion_Rolling138_g50723));
				float3 appendResult2043_g50723 = (float3(Motion_X216_g50723 , 0.0 , Motion_Z190_g50723));
				float3 Vertex_Motion_World1118_g50723 = ( ( temp_output_3474_0_g50723 + appendResult2047_g50723 ) + appendResult2043_g50723 );
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch3312_g50723 = Vertex_Motion_World1118_g50723;
				#else
				float3 staticSwitch3312_g50723 = ( Vertex_Motion_Object833_g50723 + ( 0.0 * _VertexDataMode ) );
				#endif
				half Global_Vertex_Size174_g50723 = break322_g51522.w;
				float lerpResult346_g50723 = lerp( 1.0 , Global_Vertex_Size174_g50723 , _GlobalSize);
				float3 appendResult3480_g50723 = (float3(lerpResult346_g50723 , lerpResult346_g50723 , lerpResult346_g50723));
				half3 ObjectData20_g51435 = appendResult3480_g50723;
				half3 _Vector11 = half3(1,1,1);
				half3 WorldData19_g51435 = _Vector11;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51435 = WorldData19_g51435;
				#else
				float3 staticSwitch14_g51435 = ObjectData20_g51435;
				#endif
				half3 Vertex_Size1741_g50723 = staticSwitch14_g51435;
				half3 _Vector5 = half3(1,1,1);
				float3 Vertex_SizeFade1740_g50723 = _Vector5;
				half3 Grass_Coverage2661_g50723 = half3(0,0,0);
				float3 Final_VertexPosition890_g50723 = ( ( staticSwitch3312_g50723 * Vertex_Size1741_g50723 * Vertex_SizeFade1740_g50723 ) + Mesh_PivotsOS2291_g50723 + Grass_Coverage2661_g50723 );
				
				float temp_output_7_0_g51545 = TVE_CameraFadeStart;
				float saferPower3976_g50723 = max( saturate( ( ( distance( ase_worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g51545 ) / ( TVE_CameraFadeEnd - temp_output_7_0_g51545 ) ) ) , 0.0001 );
				float temp_output_3976_0_g50723 = pow( saferPower3976_g50723 , _FadeCameraValue );
				float vertexToFrag11_g51542 = temp_output_3976_0_g50723;
				outputPackedVaryingsMeshToPS.ase_texcoord1.x = vertexToFrag11_g51542;
				float3 vertexToFrag3890_g50723 = ase_worldPos;
				outputPackedVaryingsMeshToPS.ase_texcoord1.yzw = vertexToFrag3890_g50723;
				float2 vertexToFrag11_g51423 = ( ( inputMesh.ase_texcoord.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				outputPackedVaryingsMeshToPS.ase_texcoord2.xy = vertexToFrag11_g51423;
				
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord2.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = Final_VertexPosition890_g50723;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS =  inputMesh.normalOS ;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.interp00.xyz = positionRWS;
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif
			
			void Frag( PackedVaryingsMeshToPS packedInput
						#ifdef WRITE_NORMAL_BUFFER
						, out float4 outNormalBuffer : SV_Target0
							#ifdef WRITE_MSAA_DEPTH
							, out float1 depthColor : SV_Target1
							#endif
						#elif defined(WRITE_MSAA_DEPTH)
						, out float4 outNormalBuffer : SV_Target0
						, out float1 depthColor : SV_Target1
						#elif defined(SCENESELECTIONPASS)
						, out float4 outColor : SV_Target0
						#endif
						#ifdef _DEPTHOFFSET_ON
						, out float outputDepth : SV_Depth
						#endif
						
					)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );

				float3 positionRWS = packedInput.interp00.xyz;

				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);

				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				input.positionRWS = positionRWS;

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false );
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				AlphaSurfaceDescription surfaceDescription = (AlphaSurfaceDescription)0;
				float localCustomAlphaClip3735_g50723 = ( 0.0 );
				float vertexToFrag11_g51542 = packedInput.ase_texcoord1.x;
				half Fade_Camera3743_g50723 = vertexToFrag11_g51542;
				half Final_AlphaFade3727_g50723 = ( 1.0 * Fade_Camera3743_g50723 );
				float temp_output_41_0_g51554 = Final_AlphaFade3727_g50723;
				float3 vertexToFrag3890_g50723 = packedInput.ase_texcoord1.yzw;
				float3 PositionWS_PerVertex3905_g50723 = vertexToFrag3890_g50723;
				float2 vertexToFrag11_g51423 = packedInput.ase_texcoord2.xy;
				half2 Main_UVs15_g50723 = vertexToFrag11_g51423;
				float4 tex2DNode29_g50723 = SAMPLE_TEXTURE2D( _MainAlbedoTex, sampler_MainAlbedoTex, Main_UVs15_g50723 );
				float Main_Alpha316_g50723 = ( _MainColor.a * tex2DNode29_g50723.a );
				half AlphaTreshold2132_g50723 = _Cutoff;
				#ifdef TVE_ALPHA_CLIP
				float staticSwitch3792_g50723 = ( Main_Alpha316_g50723 - ( AlphaTreshold2132_g50723 - 0.5 ) );
				#else
				float staticSwitch3792_g50723 = Main_Alpha316_g50723;
				#endif
				half Final_Alpha3754_g50723 = staticSwitch3792_g50723;
				float temp_output_661_0_g50723 = ( saturate( ( temp_output_41_0_g51554 + ( temp_output_41_0_g51554 * SAMPLE_TEXTURE3D( TVE_ScreenTex3D, samplerTVE_ScreenTex3D, ( TVE_ScreenTexCoord * PositionWS_PerVertex3905_g50723 ) ).r ) ) ) * Final_Alpha3754_g50723 );
				float Alpha3735_g50723 = temp_output_661_0_g50723;
				float Treshold3735_g50723 = 0.5;
				{
				#if TVE_ALPHA_CLIP
				clip(Alpha3735_g50723 - Treshold3735_g50723);
				#endif
				}
				half Final_Clip914_g50723 = saturate( Alpha3735_g50723 );
				
				surfaceDescription.Alpha = Final_Clip914_g50723;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				#endif

				#ifdef _ALPHATEST_SHADOW_ON
				surfaceDescription.AlphaClipThresholdShadow = 0.5;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription, input, V, posInput, surfaceData, builtinData);

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif

				#ifdef WRITE_NORMAL_BUFFER
				EncodeIntoNormalBuffer( ConvertSurfaceDataToNormalData( surfaceData ), posInput.positionSS, outNormalBuffer );
				#ifdef WRITE_MSAA_DEPTH
				depthColor = packedInput.positionCS.z;
				#endif
				#elif defined(WRITE_MSAA_DEPTH)
				outNormalBuffer = float4( 0.0, 0.0, 0.0, 1.0 );
				depthColor = packedInput.positionCS.z;
				#elif defined(SCENESELECTIONPASS)
				outColor = float4( _ObjectId, _PassValue, 1.0, 1.0 );
				#endif
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "SceneSelectionPass"
			Tags { "LightMode"="SceneSelectionPass" }
			ColorMask 0

			HLSLPROGRAM

			#define ASE_NEED_CULLFACE 1
			#define _MATERIAL_FEATURE_SPECULAR_COLOR 1
			#define _ENERGY_CONSERVING_SPECULAR 1
			#pragma multi_compile _ DOTS_INSTANCING_ON
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define _AMBIENT_OCCLUSION 1
			#define HAVE_MESH_MODIFICATION
			#define ASE_SRP_VERSION 100202
			#define ASE_USING_SAMPLING_MACROS 1


			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT
			#pragma shader_feature_local _DOUBLESIDED_ON
			#pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
			#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT
			#pragma shader_feature_local _ALPHATEST_ON

			#define SHADERPASS SHADERPASS_DEPTH_ONLY
			#define SCENESELECTIONPASS
			#pragma editor_sync_compilation

			#pragma vertex Vert
			#pragma fragment Frag

			//#define UNITY_MATERIAL_LIT

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#ifdef DEBUG_DISPLAY
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#endif

			CBUFFER_START( UnityPerMaterial )
			half4 _DetailBlendRemap;
			half4 _OverlayMaskRemap;
			float4 _NoiseMaskRemap;
			half4 _SubsurfaceMaskRemap;
			half4 _VertexOcclusionRemap;
			float4 _MaxBoundsInfo;
			float4 _SubsurfaceDiffusion_asset;
			half4 _MainColor;
			half4 _MainUVs;
			half4 _SecondColor;
			float4 _GradientMaskRemap;
			float4 _SubsurfaceDiffusion_Asset;
			float4 _Color;
			half4 _VertexOcclusionColor;
			half4 _SecondUVs;
			half4 _ColorsMaskRemap;
			float4 _EmissiveIntensityParams;
			half4 _EmissiveColor;
			half4 _EmissiveUVs;
			half3 _render_normals_options;
			half _MotionVariation_10;
			float _MotionSpeed_10;
			half _MotionAmplitude_10;
			half _MotionScale_20;
			half _MotionVariation_20;
			half _MotionSpeed_20;
			half _VertexRollingMode;
			half _LayerMotionValue;
			half _vertex_pivot_mode;
			half _MotionAmplitude_20;
			half _render_src;
			half _IsStandardShader;
			half _MainSmoothnessValue;
			half _SecondSmoothnessValue;
			half _GlobalWetness;
			half _MainOcclusionValue;
			float _MotionScale_10;
			half _InteractionAmplitude;
			half _EmissiveExposureValue;
			half _VertexOcclusionMinValue;
			half _OverlayMaskMaxValue;
			half _OverlayMaskMinValue;
			half _SecondNormalValue;
			half _LayerExtrasValue;
			half _GlobalOverlay;
			half _DetailNormalValue;
			half _MainNormalValue;
			half _OverlayBottomValue;
			half _DetailBlendMaxValue;
			half _DetailBlendMinValue;
			half _DetailMaskInvertMode;
			half _DetailMaskMode;
			half _DetailMeshValue;
			half _RenderSpecular;
			half _GlobalSize;
			half _VertexDataMode;
			half _InteractionVariation;
			half _LayerReactValue;
			half _VertexOcclusionMaxValue;
			half _render_zw;
			half _IsVersion;
			half _RenderNormals;
			half _VariationMotionMessage;
			half _RenderClip;
			half _Cutoff;
			half _MotionSpace;
			half _GradientCat;
			half _VertexVariationMode;
			half _RenderDecals;
			half _TranslucencyDirectValue;
			half _NoiseCat;
			half _SubsurfaceCat;
			half _LayersSpace;
			half _RenderZWrite;
			half _DetailMode;
			half _EmissiveCat;
			half _RenderMode;
			half _RenderSSR;
			half _SizeFadeCat;
			half _render_dst;
			half _render_cull;
			half _IsBarkShader;
			half _TranslucencyIntensityValue;
			half _TranslucencyNormalValue;
			half _FadeSpace;
			half _DetailSpace;
			half _TranslucencyShadowValue;
			half _EmissiveFlagMode;
			half _TranslucencyHDMessage;
			half _OcclusionCat;
			half _RenderPriority;
			half _TranslucencyAmbientValue;
			half _DetailCat;
			half _VertexMasksMode;
			half _SizeFadeMessage;
			half _MainCat;
			half _SecondOcclusionValue;
			half _ReceiveSpace;
			half _PerspectiveCat;
			half _VariationGlobalsMessage;
			float _SubsurfaceDiffusion;
			half _RenderingCat;
			half _DetailBlendMode;
			half _TranslucencyScatteringValue;
			half _IsTVEShader;
			half _GlobalCat;
			half _RenderCull;
			half _DetailTypeMode;
			half _MotionCat;
			half _FadeCameraValue;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			TEXTURE2D(_MainTex);
			SAMPLER(sampler_MainTex);
			TEXTURE2D(_BumpMap);
			SAMPLER(sampler_BumpMap);
			half4 TVE_MotionParams;
			TEXTURE2D_ARRAY(TVE_MotionTex);
			half4 TVE_MotionCoord;
			SAMPLER(samplerTVE_MotionTex);
			float TVE_MotionUsage[9];
			TEXTURE2D(TVE_NoiseTex);
			float2 TVE_NoiseSpeed_Vegetation;
			float2 TVE_NoiseSpeed_Grass;
			half TVE_NoiseSize_Vegetation;
			half TVE_NoiseSize_Grass;
			SAMPLER(samplerTVE_NoiseTex);
			half4 TVE_ReactParams;
			TEXTURE2D_ARRAY(TVE_ReactTex);
			half4 TVE_ReactCoord;
			SAMPLER(samplerTVE_ReactTex);
			float TVE_ReactUsage[9];
			half TVE_CameraFadeStart;
			half TVE_CameraFadeEnd;
			TEXTURE3D(TVE_ScreenTex3D);
			half TVE_ScreenTexCoord;
			SAMPLER(samplerTVE_ScreenTex3D);
			TEXTURE2D(_MainAlbedoTex);
			SAMPLER(sampler_MainAlbedoTex);


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_VERT_POSITION
			#pragma shader_feature_local TVE_ALPHA_CLIP
			#pragma shader_feature_local TVE_VERTEX_DATA_BATCHED
			//TVE Injection Defines
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			//TVE Pipeline Defines
			#define THE_VEGETATION_ENGINE
			#define IS_HD_PIPELINE
			//TVE HD Pipeline Defines
			#pragma shader_feature_local _DISABLE_DECALS
			#pragma shader_feature_local _DISABLE_SSR
			//TVE Shader Type Defines
			#define TVE_IS_VEGETATION_SHADER


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
				#define ASE_NEED_CULLFACE 1
			#endif

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 interp00 : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			int _ObjectId;
			int _PassValue;

			float3 ObjectPosition_UNITY_MATRIX_M(  )
			{
				return float3(UNITY_MATRIX_M[0].w, UNITY_MATRIX_M[1].w, UNITY_MATRIX_M[2].w );
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout SceneSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// surface data

				// refraction
				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif


				// material features
				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				#endif
				#ifdef ASE_LIT_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				// others
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				// normals
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );

				// decals
				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs.tangentToWorld[2], surfaceDescription.Alpha);
					ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
				}
				#endif

				bentNormalWS = surfaceData.normalWS;
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#endif

				// debug
				#if defined(DEBUG_DISPLAY)
				if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				{
					surfaceData.metallic = 0;
				}
				ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif
			}

			void GetSurfaceAndBuiltinData(SceneSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				ApplyDoubleSidedFlipOrMirror( fragInputs, doubleSidedConstants );

				#ifdef _ALPHATEST_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS );

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;
				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				float3 PositionOS3588_g50723 = inputMesh.positionOS;
				half3 _Vector1 = half3(0,0,0);
				half3 Mesh_PivotsOS2291_g50723 = _Vector1;
				float3 temp_output_2283_0_g50723 = ( PositionOS3588_g50723 - Mesh_PivotsOS2291_g50723 );
				half3 VertexPos40_g51512 = temp_output_2283_0_g50723;
				float3 appendResult74_g51512 = (float3(0.0 , VertexPos40_g51512.y , 0.0));
				float3 VertexPosRotationAxis50_g51512 = appendResult74_g51512;
				float3 break84_g51512 = VertexPos40_g51512;
				float3 appendResult81_g51512 = (float3(break84_g51512.x , 0.0 , break84_g51512.z));
				float3 VertexPosOtherAxis82_g51512 = appendResult81_g51512;
				float ObjectData20_g51480 = 3.14;
				float Bounds_Radius121_g50723 = _MaxBoundsInfo.x;
				float WorldData19_g51480 = Bounds_Radius121_g50723;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g51480 = WorldData19_g51480;
				#else
				float staticSwitch14_g51480 = ObjectData20_g51480;
				#endif
				float Motion_Max_Rolling1137_g50723 = staticSwitch14_g51480;
				float3 localObjectPosition_UNITY_MATRIX_M14_g51483 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g51484 = localObjectPosition_UNITY_MATRIX_M14_g51483;
				float3 appendResult93_g51483 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				float3 temp_output_91_0_g51483 = ( appendResult93_g51483 * _vertex_pivot_mode );
				float3 PivotsOnly105_g51483 = (mul( GetObjectToWorldMatrix(), float4( temp_output_91_0_g51483 , 0.0 ) ).xyz).xyz;
				half3 On20_g51484 = ( localObjectPosition_UNITY_MATRIX_M14_g51483 + PivotsOnly105_g51483 );
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g51484 = On20_g51484;
				#else
				float3 staticSwitch14_g51484 = Off19_g51484;
				#endif
				half3 ObjectData20_g51485 = staticSwitch14_g51484;
				half3 WorldData19_g51485 = Off19_g51484;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51485 = WorldData19_g51485;
				#else
				float3 staticSwitch14_g51485 = ObjectData20_g51485;
				#endif
				float3 temp_output_66_0_g51483 = staticSwitch14_g51485;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g51483 = ( temp_output_66_0_g51483 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g51483 = temp_output_66_0_g51483;
				#endif
				half3 ObjectData20_g51482 = staticSwitch13_g51483;
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.positionOS).xyz ) );
				half3 WorldData19_g51482 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51482 = WorldData19_g51482;
				#else
				float3 staticSwitch14_g51482 = ObjectData20_g51482;
				#endif
				float3 Position83_g51481 = staticSwitch14_g51482;
				float temp_output_84_0_g51481 = _LayerMotionValue;
				float4 lerpResult87_g51481 = lerp( TVE_MotionParams , SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_MotionTex, samplerTVE_MotionTex, ( (TVE_MotionCoord).zw + ( (TVE_MotionCoord).xy * (Position83_g51481).xz ) ),temp_output_84_0_g51481, 0.0 ) , TVE_MotionUsage[(int)temp_output_84_0_g51481]);
				half4 Global_Motion_Params3909_g50723 = lerpResult87_g51481;
				float4 break322_g51421 = Global_Motion_Params3909_g50723;
				half Wind_Power369_g51421 = break322_g51421.z;
				float lerpResult410_g51421 = lerp( 0.2 , 1.0 , Wind_Power369_g51421);
				half Wind_Power_203109_g50723 = lerpResult410_g51421;
				half Mesh_Motion_260_g50723 = inputMesh.ase_texcoord3.y;
				#ifdef TVE_IS_GRASS_SHADER
				float2 staticSwitch160_g51439 = TVE_NoiseSpeed_Grass;
				#else
				float2 staticSwitch160_g51439 = TVE_NoiseSpeed_Vegetation;
				#endif
				float3 localObjectPosition_UNITY_MATRIX_M14_g51441 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g51442 = localObjectPosition_UNITY_MATRIX_M14_g51441;
				float3 appendResult93_g51441 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				float3 temp_output_91_0_g51441 = ( appendResult93_g51441 * _vertex_pivot_mode );
				float3 PivotsOnly105_g51441 = (mul( GetObjectToWorldMatrix(), float4( temp_output_91_0_g51441 , 0.0 ) ).xyz).xyz;
				half3 On20_g51442 = ( localObjectPosition_UNITY_MATRIX_M14_g51441 + PivotsOnly105_g51441 );
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g51442 = On20_g51442;
				#else
				float3 staticSwitch14_g51442 = Off19_g51442;
				#endif
				half3 ObjectData20_g51443 = staticSwitch14_g51442;
				half3 WorldData19_g51443 = Off19_g51442;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51443 = WorldData19_g51443;
				#else
				float3 staticSwitch14_g51443 = ObjectData20_g51443;
				#endif
				float3 temp_output_66_0_g51441 = staticSwitch14_g51443;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g51441 = ( temp_output_66_0_g51441 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g51441 = temp_output_66_0_g51441;
				#endif
				half3 ObjectData20_g51440 = staticSwitch13_g51441;
				half3 WorldData19_g51440 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51440 = WorldData19_g51440;
				#else
				float3 staticSwitch14_g51440 = ObjectData20_g51440;
				#endif
				#ifdef TVE_IS_GRASS_SHADER
				float2 staticSwitch164_g51439 = (ase_worldPos).xz;
				#else
				float2 staticSwitch164_g51439 = (staticSwitch14_g51440).xz;
				#endif
				#ifdef TVE_IS_GRASS_SHADER
				float staticSwitch161_g51439 = TVE_NoiseSize_Grass;
				#else
				float staticSwitch161_g51439 = TVE_NoiseSize_Vegetation;
				#endif
				float2 panner73_g51439 = ( _TimeParameters.x * staticSwitch160_g51439 + ( staticSwitch164_g51439 * staticSwitch161_g51439 ));
				float4 tex2DNode75_g51439 = SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, samplerTVE_NoiseTex, panner73_g51439, 0.0 );
				float4 saferPower77_g51439 = max( abs( tex2DNode75_g51439 ) , 0.0001 );
				half Wind_Power2223_g50723 = Wind_Power369_g51421;
				float temp_output_167_0_g51439 = Wind_Power2223_g50723;
				float lerpResult168_g51439 = lerp( 1.5 , 0.25 , temp_output_167_0_g51439);
				float4 temp_cast_7 = (lerpResult168_g51439).xxxx;
				float4 break142_g51439 = pow( saferPower77_g51439 , temp_cast_7 );
				half Global_NoiseTex_R34_g50723 = break142_g51439.r;
				half Input_Speed62_g51479 = _MotionSpeed_20;
				float mulTime354_g51479 = _TimeParameters.x * Input_Speed62_g51479;
				float3 localObjectPosition_UNITY_MATRIX_M14_g51497 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g51498 = localObjectPosition_UNITY_MATRIX_M14_g51497;
				float3 appendResult93_g51497 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				float3 temp_output_91_0_g51497 = ( appendResult93_g51497 * _vertex_pivot_mode );
				float3 PivotsOnly105_g51497 = (mul( GetObjectToWorldMatrix(), float4( temp_output_91_0_g51497 , 0.0 ) ).xyz).xyz;
				half3 On20_g51498 = ( localObjectPosition_UNITY_MATRIX_M14_g51497 + PivotsOnly105_g51497 );
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g51498 = On20_g51498;
				#else
				float3 staticSwitch14_g51498 = Off19_g51498;
				#endif
				half3 ObjectData20_g51499 = staticSwitch14_g51498;
				half3 WorldData19_g51499 = Off19_g51498;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51499 = WorldData19_g51499;
				#else
				float3 staticSwitch14_g51499 = ObjectData20_g51499;
				#endif
				float3 temp_output_66_0_g51497 = staticSwitch14_g51499;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g51497 = ( temp_output_66_0_g51497 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g51497 = temp_output_66_0_g51497;
				#endif
				float3 break9_g51497 = staticSwitch13_g51497;
				half Variation_Complex102_g51495 = frac( ( inputMesh.ase_color.r + ( break9_g51497.x + break9_g51497.z ) ) );
				float ObjectData20_g51496 = Variation_Complex102_g51495;
				half Variation_Simple105_g51495 = inputMesh.ase_color.r;
				float WorldData19_g51496 = Variation_Simple105_g51495;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g51496 = WorldData19_g51496;
				#else
				float staticSwitch14_g51496 = ObjectData20_g51496;
				#endif
				half Motion_Variation3073_g50723 = staticSwitch14_g51496;
				float temp_output_3154_0_g50723 = ( _MotionVariation_20 * Motion_Variation3073_g50723 );
				float Motion_Variation284_g51479 = temp_output_3154_0_g50723;
				float Motion_Scale287_g51479 = ( _MotionScale_20 * ase_worldPos.x );
				half Variation127_g51521 = temp_output_3154_0_g50723;
				float lerpResult110_g51521 = lerp( ceil( saturate( ( frac( ( Variation127_g51521 + 0.3576 ) ) - 0.6 ) ) ) , ceil( saturate( ( frac( ( Variation127_g51521 + 0.1715 ) ) - 0.4 ) ) ) , (sin( _TimeParameters.x )*0.5 + 0.5));
				float temp_output_112_0_g51521 = Wind_Power2223_g50723;
				float lerpResult111_g51521 = lerp( lerpResult110_g51521 , 1.0 , ( temp_output_112_0_g51521 * temp_output_112_0_g51521 * temp_output_112_0_g51521 * temp_output_112_0_g51521 ));
				float lerpResult126_g51521 = lerp( lerpResult111_g51521 , 1.0 , ( 1.0 - saturate( Variation127_g51521 ) ));
				half Motion_Rolling138_g50723 = ( ( _MotionAmplitude_20 * Motion_Max_Rolling1137_g50723 ) * ( Wind_Power_203109_g50723 * Mesh_Motion_260_g50723 * Global_NoiseTex_R34_g50723 * _VertexRollingMode ) * sin( ( mulTime354_g51479 + Motion_Variation284_g51479 + Motion_Scale287_g51479 ) ) * lerpResult126_g51521 );
				half Angle44_g51512 = Motion_Rolling138_g50723;
				half3 VertexPos40_g51437 = ( VertexPosRotationAxis50_g51512 + ( VertexPosOtherAxis82_g51512 * cos( Angle44_g51512 ) ) + ( cross( float3(0,1,0) , VertexPosOtherAxis82_g51512 ) * sin( Angle44_g51512 ) ) );
				float3 appendResult74_g51437 = (float3(VertexPos40_g51437.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g51437 = appendResult74_g51437;
				float3 break84_g51437 = VertexPos40_g51437;
				float3 appendResult81_g51437 = (float3(0.0 , break84_g51437.y , break84_g51437.z));
				half3 VertexPosOtherAxis82_g51437 = appendResult81_g51437;
				float ObjectData20_g51438 = 3.14;
				float Bounds_Height374_g50723 = _MaxBoundsInfo.y;
				float WorldData19_g51438 = ( Bounds_Height374_g50723 * 3.14 );
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g51438 = WorldData19_g51438;
				#else
				float staticSwitch14_g51438 = ObjectData20_g51438;
				#endif
				float Motion_Max_Bending1133_g50723 = staticSwitch14_g51438;
				float lerpResult376_g51421 = lerp( 0.1 , 1.0 , Wind_Power369_g51421);
				half Wind_Power_103106_g50723 = lerpResult376_g51421;
				float3 appendResult397_g51421 = (float3(break322_g51421.x , 0.0 , break322_g51421.y));
				float3 temp_output_398_0_g51421 = (appendResult397_g51421*2.0 + -1.0);
				float3 ase_parentObjectScale = ( 1.0 / float3( length( GetWorldToObjectMatrix()[ 0 ].xyz ), length( GetWorldToObjectMatrix()[ 1 ].xyz ), length( GetWorldToObjectMatrix()[ 2 ].xyz ) ) );
				float3 temp_output_339_0_g51421 = ( mul( GetWorldToObjectMatrix(), float4( temp_output_398_0_g51421 , 0.0 ) ).xyz * ase_parentObjectScale );
				half2 Wind_DirectionOS39_g50723 = (temp_output_339_0_g51421).xz;
				half Input_Speed62_g51477 = _MotionSpeed_10;
				float mulTime373_g51477 = _TimeParameters.x * Input_Speed62_g51477;
				half Motion_Variation284_g51477 = ( _MotionVariation_10 * Motion_Variation3073_g50723 );
				float2 appendResult344_g51477 = (float2(ase_worldPos.x , ase_worldPos.z));
				float2 Motion_Scale287_g51477 = ( _MotionScale_10 * appendResult344_g51477 );
				half2 Sine_MinusOneToOne281_g51477 = sin( ( mulTime373_g51477 + Motion_Variation284_g51477 + Motion_Scale287_g51477 ) );
				float2 temp_cast_12 = (1.0).xx;
				half Input_Turbulence327_g51477 = Global_NoiseTex_R34_g50723;
				float2 lerpResult321_g51477 = lerp( Sine_MinusOneToOne281_g51477 , temp_cast_12 , Input_Turbulence327_g51477);
				half2 Motion_Bending2258_g50723 = ( ( _MotionAmplitude_10 * Motion_Max_Bending1133_g50723 ) * Wind_Power_103106_g50723 * Wind_DirectionOS39_g50723 * Global_NoiseTex_R34_g50723 * lerpResult321_g51477 );
				half Interaction_Amplitude4137_g50723 = _InteractionAmplitude;
				float3 localObjectPosition_UNITY_MATRIX_M14_g51526 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g51527 = localObjectPosition_UNITY_MATRIX_M14_g51526;
				float3 appendResult93_g51526 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				float3 temp_output_91_0_g51526 = ( appendResult93_g51526 * _vertex_pivot_mode );
				float3 PivotsOnly105_g51526 = (mul( GetObjectToWorldMatrix(), float4( temp_output_91_0_g51526 , 0.0 ) ).xyz).xyz;
				half3 On20_g51527 = ( localObjectPosition_UNITY_MATRIX_M14_g51526 + PivotsOnly105_g51526 );
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g51527 = On20_g51527;
				#else
				float3 staticSwitch14_g51527 = Off19_g51527;
				#endif
				half3 ObjectData20_g51528 = staticSwitch14_g51527;
				half3 WorldData19_g51528 = Off19_g51527;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51528 = WorldData19_g51528;
				#else
				float3 staticSwitch14_g51528 = ObjectData20_g51528;
				#endif
				float3 temp_output_66_0_g51526 = staticSwitch14_g51528;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g51526 = ( temp_output_66_0_g51526 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g51526 = temp_output_66_0_g51526;
				#endif
				half3 ObjectData20_g51525 = staticSwitch13_g51526;
				half3 WorldData19_g51525 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51525 = WorldData19_g51525;
				#else
				float3 staticSwitch14_g51525 = ObjectData20_g51525;
				#endif
				float3 Position83_g51524 = staticSwitch14_g51525;
				float temp_output_84_0_g51524 = _LayerReactValue;
				float4 lerpResult87_g51524 = lerp( TVE_ReactParams , SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ReactTex, samplerTVE_ReactTex, ( (TVE_ReactCoord).zw + ( (TVE_ReactCoord).xy * (Position83_g51524).xz ) ),temp_output_84_0_g51524, 0.0 ) , TVE_ReactUsage[(int)temp_output_84_0_g51524]);
				half4 Global_React_Params4173_g50723 = lerpResult87_g51524;
				float4 break322_g51522 = Global_React_Params4173_g50723;
				half Interaction_Mask66_g50723 = break322_g51522.z;
				float3 appendResult397_g51522 = (float3(break322_g51522.x , 0.0 , break322_g51522.y));
				float3 temp_output_398_0_g51522 = (appendResult397_g51522*2.0 + -1.0);
				float3 temp_output_339_0_g51522 = ( mul( GetWorldToObjectMatrix(), float4( temp_output_398_0_g51522 , 0.0 ) ).xyz * ase_parentObjectScale );
				half2 Interaction_DirectionOS4158_g50723 = (temp_output_339_0_g51522).xz;
				float lerpResult3307_g50723 = lerp( 1.0 , Motion_Variation3073_g50723 , _InteractionVariation);
				half2 Motion_Interaction53_g50723 = ( Interaction_Amplitude4137_g50723 * Motion_Max_Bending1133_g50723 * Interaction_Mask66_g50723 * Interaction_Mask66_g50723 * Interaction_DirectionOS4158_g50723 * lerpResult3307_g50723 );
				float2 lerpResult109_g50723 = lerp( Motion_Bending2258_g50723 , Motion_Interaction53_g50723 , ( Interaction_Mask66_g50723 * saturate( Interaction_Amplitude4137_g50723 ) ));
				half Mesh_Motion_182_g50723 = inputMesh.ase_texcoord3.x;
				float2 break143_g50723 = ( lerpResult109_g50723 * Mesh_Motion_182_g50723 );
				half Motion_Z190_g50723 = break143_g50723.y;
				half Angle44_g51437 = Motion_Z190_g50723;
				half3 VertexPos40_g51436 = ( VertexPosRotationAxis50_g51437 + ( VertexPosOtherAxis82_g51437 * cos( Angle44_g51437 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g51437 ) * sin( Angle44_g51437 ) ) );
				float3 appendResult74_g51436 = (float3(0.0 , 0.0 , VertexPos40_g51436.z));
				half3 VertexPosRotationAxis50_g51436 = appendResult74_g51436;
				float3 break84_g51436 = VertexPos40_g51436;
				float3 appendResult81_g51436 = (float3(break84_g51436.x , break84_g51436.y , 0.0));
				half3 VertexPosOtherAxis82_g51436 = appendResult81_g51436;
				half Motion_X216_g50723 = break143_g50723.x;
				half Angle44_g51436 = -Motion_X216_g50723;
				float3 Vertex_Motion_Object833_g50723 = ( VertexPosRotationAxis50_g51436 + ( VertexPosOtherAxis82_g51436 * cos( Angle44_g51436 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g51436 ) * sin( Angle44_g51436 ) ) );
				float3 temp_output_3474_0_g50723 = ( PositionOS3588_g50723 - Mesh_PivotsOS2291_g50723 );
				float3 appendResult2047_g50723 = (float3(Motion_Rolling138_g50723 , 0.0 , -Motion_Rolling138_g50723));
				float3 appendResult2043_g50723 = (float3(Motion_X216_g50723 , 0.0 , Motion_Z190_g50723));
				float3 Vertex_Motion_World1118_g50723 = ( ( temp_output_3474_0_g50723 + appendResult2047_g50723 ) + appendResult2043_g50723 );
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch3312_g50723 = Vertex_Motion_World1118_g50723;
				#else
				float3 staticSwitch3312_g50723 = ( Vertex_Motion_Object833_g50723 + ( 0.0 * _VertexDataMode ) );
				#endif
				half Global_Vertex_Size174_g50723 = break322_g51522.w;
				float lerpResult346_g50723 = lerp( 1.0 , Global_Vertex_Size174_g50723 , _GlobalSize);
				float3 appendResult3480_g50723 = (float3(lerpResult346_g50723 , lerpResult346_g50723 , lerpResult346_g50723));
				half3 ObjectData20_g51435 = appendResult3480_g50723;
				half3 _Vector11 = half3(1,1,1);
				half3 WorldData19_g51435 = _Vector11;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51435 = WorldData19_g51435;
				#else
				float3 staticSwitch14_g51435 = ObjectData20_g51435;
				#endif
				half3 Vertex_Size1741_g50723 = staticSwitch14_g51435;
				half3 _Vector5 = half3(1,1,1);
				float3 Vertex_SizeFade1740_g50723 = _Vector5;
				half3 Grass_Coverage2661_g50723 = half3(0,0,0);
				float3 Final_VertexPosition890_g50723 = ( ( staticSwitch3312_g50723 * Vertex_Size1741_g50723 * Vertex_SizeFade1740_g50723 ) + Mesh_PivotsOS2291_g50723 + Grass_Coverage2661_g50723 );
				
				float temp_output_7_0_g51545 = TVE_CameraFadeStart;
				float saferPower3976_g50723 = max( saturate( ( ( distance( ase_worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g51545 ) / ( TVE_CameraFadeEnd - temp_output_7_0_g51545 ) ) ) , 0.0001 );
				float temp_output_3976_0_g50723 = pow( saferPower3976_g50723 , _FadeCameraValue );
				float vertexToFrag11_g51542 = temp_output_3976_0_g50723;
				outputPackedVaryingsMeshToPS.ase_texcoord1.x = vertexToFrag11_g51542;
				float3 vertexToFrag3890_g50723 = ase_worldPos;
				outputPackedVaryingsMeshToPS.ase_texcoord1.yzw = vertexToFrag3890_g50723;
				float2 vertexToFrag11_g51423 = ( ( inputMesh.ase_texcoord.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				outputPackedVaryingsMeshToPS.ase_texcoord2.xy = vertexToFrag11_g51423;
				
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord2.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = Final_VertexPosition890_g50723;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS =  inputMesh.normalOS ;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.interp00.xyz = positionRWS;
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			void Frag( PackedVaryingsMeshToPS packedInput
						#ifdef WRITE_NORMAL_BUFFER
						, out float4 outNormalBuffer : SV_Target0
							#ifdef WRITE_MSAA_DEPTH
							, out float1 depthColor : SV_Target1
							#endif
						#elif defined(WRITE_MSAA_DEPTH)
						, out float4 outNormalBuffer : SV_Target0
						, out float1 depthColor : SV_Target1
						#elif defined(SCENESELECTIONPASS)
						, out float4 outColor : SV_Target0
						#endif
						#ifdef _DEPTHOFFSET_ON
						, out float outputDepth : SV_Depth
						#endif
						
					)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );

				float3 positionRWS = packedInput.interp00.xyz;

				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);

				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				input.positionRWS = positionRWS;

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false );
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				SceneSurfaceDescription surfaceDescription = (SceneSurfaceDescription)0;
				float localCustomAlphaClip3735_g50723 = ( 0.0 );
				float vertexToFrag11_g51542 = packedInput.ase_texcoord1.x;
				half Fade_Camera3743_g50723 = vertexToFrag11_g51542;
				half Final_AlphaFade3727_g50723 = ( 1.0 * Fade_Camera3743_g50723 );
				float temp_output_41_0_g51554 = Final_AlphaFade3727_g50723;
				float3 vertexToFrag3890_g50723 = packedInput.ase_texcoord1.yzw;
				float3 PositionWS_PerVertex3905_g50723 = vertexToFrag3890_g50723;
				float2 vertexToFrag11_g51423 = packedInput.ase_texcoord2.xy;
				half2 Main_UVs15_g50723 = vertexToFrag11_g51423;
				float4 tex2DNode29_g50723 = SAMPLE_TEXTURE2D( _MainAlbedoTex, sampler_MainAlbedoTex, Main_UVs15_g50723 );
				float Main_Alpha316_g50723 = ( _MainColor.a * tex2DNode29_g50723.a );
				half AlphaTreshold2132_g50723 = _Cutoff;
				#ifdef TVE_ALPHA_CLIP
				float staticSwitch3792_g50723 = ( Main_Alpha316_g50723 - ( AlphaTreshold2132_g50723 - 0.5 ) );
				#else
				float staticSwitch3792_g50723 = Main_Alpha316_g50723;
				#endif
				half Final_Alpha3754_g50723 = staticSwitch3792_g50723;
				float temp_output_661_0_g50723 = ( saturate( ( temp_output_41_0_g51554 + ( temp_output_41_0_g51554 * SAMPLE_TEXTURE3D( TVE_ScreenTex3D, samplerTVE_ScreenTex3D, ( TVE_ScreenTexCoord * PositionWS_PerVertex3905_g50723 ) ).r ) ) ) * Final_Alpha3754_g50723 );
				float Alpha3735_g50723 = temp_output_661_0_g50723;
				float Treshold3735_g50723 = 0.5;
				{
				#if TVE_ALPHA_CLIP
				clip(Alpha3735_g50723 - Treshold3735_g50723);
				#endif
				}
				half Final_Clip914_g50723 = saturate( Alpha3735_g50723 );
				
				surfaceDescription.Alpha = Final_Clip914_g50723;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription, input, V, posInput, surfaceData, builtinData);

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif

				#ifdef WRITE_NORMAL_BUFFER
				EncodeIntoNormalBuffer( ConvertSurfaceDataToNormalData( surfaceData ), posInput.positionSS, outNormalBuffer );
				#ifdef WRITE_MSAA_DEPTH
				depthColor = packedInput.positionCS.z;
				#endif
				#elif defined(WRITE_MSAA_DEPTH)
				outNormalBuffer = float4( 0.0, 0.0, 0.0, 1.0 );
				depthColor = packedInput.positionCS.z;
				#elif defined(SCENESELECTIONPASS)
				outColor = float4( _ObjectId, _PassValue, 1.0, 1.0 );
				#endif
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "DepthOnly"
			Tags { "LightMode"="DepthOnly" }

			Cull [_CullMode]

			ZWrite On

			Stencil
			{
				Ref [_StencilRefDepth]
				WriteMask [_StencilWriteMaskDepth]
				Comp Always
				Pass Replace
				Fail Keep
				ZFail Keep
			}


			HLSLPROGRAM

			#define ASE_NEED_CULLFACE 1
			#define _MATERIAL_FEATURE_SPECULAR_COLOR 1
			#define _ENERGY_CONSERVING_SPECULAR 1
			#pragma multi_compile _ DOTS_INSTANCING_ON
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define _AMBIENT_OCCLUSION 1
			#define HAVE_MESH_MODIFICATION
			#define ASE_SRP_VERSION 100202
			#if !defined(ASE_NEED_CULLFACE)
			#define ASE_NEED_CULLFACE 1
			#endif //ASE_NEED_CULLFACE
			#define ASE_USING_SAMPLING_MACROS 1


			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT
			#pragma shader_feature_local _DOUBLESIDED_ON
			#pragma shader_feature_local _BLENDMODE_OFF _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
			#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT
			#pragma shader_feature_local _ALPHATEST_ON
			//BOXOPHOBIC Disable Decals
			//#pragma shader_feature_local _ _DISABLE_DECALS

			#define SHADERPASS SHADERPASS_DEPTH_ONLY
			#pragma multi_compile _ WRITE_NORMAL_BUFFER
			#pragma multi_compile _ WRITE_MSAA_DEPTH
			#pragma multi_compile _ WRITE_DECAL_BUFFER

			#pragma vertex Vert
			#pragma fragment Frag

			//#define UNITY_MATERIAL_LIT

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#ifdef DEBUG_DISPLAY
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#endif
			
			CBUFFER_START( UnityPerMaterial )
			half4 _DetailBlendRemap;
			half4 _OverlayMaskRemap;
			float4 _NoiseMaskRemap;
			half4 _SubsurfaceMaskRemap;
			half4 _VertexOcclusionRemap;
			float4 _MaxBoundsInfo;
			float4 _SubsurfaceDiffusion_asset;
			half4 _MainColor;
			half4 _MainUVs;
			half4 _SecondColor;
			float4 _GradientMaskRemap;
			float4 _SubsurfaceDiffusion_Asset;
			float4 _Color;
			half4 _VertexOcclusionColor;
			half4 _SecondUVs;
			half4 _ColorsMaskRemap;
			float4 _EmissiveIntensityParams;
			half4 _EmissiveColor;
			half4 _EmissiveUVs;
			half3 _render_normals_options;
			half _MotionVariation_10;
			float _MotionSpeed_10;
			half _MotionAmplitude_10;
			half _MotionScale_20;
			half _MotionVariation_20;
			half _MotionSpeed_20;
			half _VertexRollingMode;
			half _LayerMotionValue;
			half _vertex_pivot_mode;
			half _MotionAmplitude_20;
			half _render_src;
			half _IsStandardShader;
			half _MainSmoothnessValue;
			half _SecondSmoothnessValue;
			half _GlobalWetness;
			half _MainOcclusionValue;
			float _MotionScale_10;
			half _InteractionAmplitude;
			half _EmissiveExposureValue;
			half _VertexOcclusionMinValue;
			half _OverlayMaskMaxValue;
			half _OverlayMaskMinValue;
			half _SecondNormalValue;
			half _LayerExtrasValue;
			half _GlobalOverlay;
			half _DetailNormalValue;
			half _MainNormalValue;
			half _OverlayBottomValue;
			half _DetailBlendMaxValue;
			half _DetailBlendMinValue;
			half _DetailMaskInvertMode;
			half _DetailMaskMode;
			half _DetailMeshValue;
			half _RenderSpecular;
			half _GlobalSize;
			half _VertexDataMode;
			half _InteractionVariation;
			half _LayerReactValue;
			half _VertexOcclusionMaxValue;
			half _render_zw;
			half _IsVersion;
			half _RenderNormals;
			half _VariationMotionMessage;
			half _RenderClip;
			half _Cutoff;
			half _MotionSpace;
			half _GradientCat;
			half _VertexVariationMode;
			half _RenderDecals;
			half _TranslucencyDirectValue;
			half _NoiseCat;
			half _SubsurfaceCat;
			half _LayersSpace;
			half _RenderZWrite;
			half _DetailMode;
			half _EmissiveCat;
			half _RenderMode;
			half _RenderSSR;
			half _SizeFadeCat;
			half _render_dst;
			half _render_cull;
			half _IsBarkShader;
			half _TranslucencyIntensityValue;
			half _TranslucencyNormalValue;
			half _FadeSpace;
			half _DetailSpace;
			half _TranslucencyShadowValue;
			half _EmissiveFlagMode;
			half _TranslucencyHDMessage;
			half _OcclusionCat;
			half _RenderPriority;
			half _TranslucencyAmbientValue;
			half _DetailCat;
			half _VertexMasksMode;
			half _SizeFadeMessage;
			half _MainCat;
			half _SecondOcclusionValue;
			half _ReceiveSpace;
			half _PerspectiveCat;
			half _VariationGlobalsMessage;
			float _SubsurfaceDiffusion;
			half _RenderingCat;
			half _DetailBlendMode;
			half _TranslucencyScatteringValue;
			half _IsTVEShader;
			half _GlobalCat;
			half _RenderCull;
			half _DetailTypeMode;
			half _MotionCat;
			half _FadeCameraValue;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			TEXTURE2D(_MainTex);
			SAMPLER(sampler_MainTex);
			TEXTURE2D(_BumpMap);
			SAMPLER(sampler_BumpMap);
			half4 TVE_MotionParams;
			TEXTURE2D_ARRAY(TVE_MotionTex);
			half4 TVE_MotionCoord;
			SAMPLER(samplerTVE_MotionTex);
			float TVE_MotionUsage[9];
			TEXTURE2D(TVE_NoiseTex);
			float2 TVE_NoiseSpeed_Vegetation;
			float2 TVE_NoiseSpeed_Grass;
			half TVE_NoiseSize_Vegetation;
			half TVE_NoiseSize_Grass;
			SAMPLER(samplerTVE_NoiseTex);
			half4 TVE_ReactParams;
			TEXTURE2D_ARRAY(TVE_ReactTex);
			half4 TVE_ReactCoord;
			SAMPLER(samplerTVE_ReactTex);
			float TVE_ReactUsage[9];
			TEXTURE2D(_MainNormalTex);
			TEXTURE2D(_MainAlbedoTex);
			SAMPLER(sampler_MainAlbedoTex);
			TEXTURE2D(_SecondNormalTex);
			TEXTURE2D(_SecondMaskTex);
			SAMPLER(sampler_SecondMaskTex);
			TEXTURE2D(_MainMaskTex);
			half TVE_OverlaySmoothness;
			TEXTURE2D(_SecondAlbedoTex);
			half4 TVE_ExtrasParams;
			TEXTURE2D_ARRAY(TVE_ExtrasTex);
			half4 TVE_ExtrasCoord;
			SAMPLER(samplerTVE_ExtrasTex);
			float TVE_ExtrasUsage[9];
			half TVE_CameraFadeStart;
			half TVE_CameraFadeEnd;
			TEXTURE3D(TVE_ScreenTex3D);
			half TVE_ScreenTexCoord;
			SAMPLER(samplerTVE_ScreenTex3D);


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_VFACE
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_TANGENT
			#pragma shader_feature_local TVE_ALPHA_CLIP
			#pragma shader_feature_local TVE_VERTEX_DATA_BATCHED
			#pragma shader_feature_local TVE_DETAIL_MODE_OFF TVE_DETAIL_MODE_ON
			#pragma shader_feature_local TVE_DETAIL_BLEND_OVERLAY TVE_DETAIL_BLEND_REPLACE
			//TVE Injection Defines
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			//TVE Pipeline Defines
			#define THE_VEGETATION_ENGINE
			#define IS_HD_PIPELINE
			//TVE HD Pipeline Defines
			#pragma shader_feature_local _DISABLE_DECALS
			#pragma shader_feature_local _DISABLE_SSR
			//TVE Shader Type Defines
			#define TVE_IS_VEGETATION_SHADER


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
				#define ASE_NEED_CULLFACE 1
			#endif

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 interp00 : TEXCOORD0;
				float3 interp01 : TEXCOORD1;
				float4 interp02 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			float3 ObjectPosition_UNITY_MATRIX_M(  )
			{
				return float3(UNITY_MATRIX_M[0].w, UNITY_MATRIX_M[1].w, UNITY_MATRIX_M[2].w );
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout SmoothSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// surface data
				surfaceData.perceptualSmoothness =		surfaceDescription.Smoothness;

				// refraction
				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif


				// material features
				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				#endif
				#ifdef ASE_LIT_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				// others
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				// normals
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				normalTS = surfaceDescription.Normal;
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );
				
				// decals
				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs.tangentToWorld[2], surfaceDescription.Alpha);
					ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
				}
				#endif

				bentNormalWS = surfaceData.normalWS;
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#endif

				// debug
				#if defined(DEBUG_DISPLAY)
				if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				{
					surfaceData.metallic = 0;
				}
				ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif
			}

			void GetSurfaceAndBuiltinData(SmoothSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				ApplyDoubleSidedFlipOrMirror( fragInputs, doubleSidedConstants );

				#ifdef _ALPHATEST_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS );

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			#if defined(WRITE_DECAL_BUFFER) && !defined(_DISABLE_DECALS)
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalPrepassBuffer.hlsl"
			#endif
			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				float3 PositionOS3588_g50723 = inputMesh.positionOS;
				half3 _Vector1 = half3(0,0,0);
				half3 Mesh_PivotsOS2291_g50723 = _Vector1;
				float3 temp_output_2283_0_g50723 = ( PositionOS3588_g50723 - Mesh_PivotsOS2291_g50723 );
				half3 VertexPos40_g51512 = temp_output_2283_0_g50723;
				float3 appendResult74_g51512 = (float3(0.0 , VertexPos40_g51512.y , 0.0));
				float3 VertexPosRotationAxis50_g51512 = appendResult74_g51512;
				float3 break84_g51512 = VertexPos40_g51512;
				float3 appendResult81_g51512 = (float3(break84_g51512.x , 0.0 , break84_g51512.z));
				float3 VertexPosOtherAxis82_g51512 = appendResult81_g51512;
				float ObjectData20_g51480 = 3.14;
				float Bounds_Radius121_g50723 = _MaxBoundsInfo.x;
				float WorldData19_g51480 = Bounds_Radius121_g50723;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g51480 = WorldData19_g51480;
				#else
				float staticSwitch14_g51480 = ObjectData20_g51480;
				#endif
				float Motion_Max_Rolling1137_g50723 = staticSwitch14_g51480;
				float3 localObjectPosition_UNITY_MATRIX_M14_g51483 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g51484 = localObjectPosition_UNITY_MATRIX_M14_g51483;
				float3 appendResult93_g51483 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				float3 temp_output_91_0_g51483 = ( appendResult93_g51483 * _vertex_pivot_mode );
				float3 PivotsOnly105_g51483 = (mul( GetObjectToWorldMatrix(), float4( temp_output_91_0_g51483 , 0.0 ) ).xyz).xyz;
				half3 On20_g51484 = ( localObjectPosition_UNITY_MATRIX_M14_g51483 + PivotsOnly105_g51483 );
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g51484 = On20_g51484;
				#else
				float3 staticSwitch14_g51484 = Off19_g51484;
				#endif
				half3 ObjectData20_g51485 = staticSwitch14_g51484;
				half3 WorldData19_g51485 = Off19_g51484;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51485 = WorldData19_g51485;
				#else
				float3 staticSwitch14_g51485 = ObjectData20_g51485;
				#endif
				float3 temp_output_66_0_g51483 = staticSwitch14_g51485;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g51483 = ( temp_output_66_0_g51483 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g51483 = temp_output_66_0_g51483;
				#endif
				half3 ObjectData20_g51482 = staticSwitch13_g51483;
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.positionOS).xyz ) );
				half3 WorldData19_g51482 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51482 = WorldData19_g51482;
				#else
				float3 staticSwitch14_g51482 = ObjectData20_g51482;
				#endif
				float3 Position83_g51481 = staticSwitch14_g51482;
				float temp_output_84_0_g51481 = _LayerMotionValue;
				float4 lerpResult87_g51481 = lerp( TVE_MotionParams , SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_MotionTex, samplerTVE_MotionTex, ( (TVE_MotionCoord).zw + ( (TVE_MotionCoord).xy * (Position83_g51481).xz ) ),temp_output_84_0_g51481, 0.0 ) , TVE_MotionUsage[(int)temp_output_84_0_g51481]);
				half4 Global_Motion_Params3909_g50723 = lerpResult87_g51481;
				float4 break322_g51421 = Global_Motion_Params3909_g50723;
				half Wind_Power369_g51421 = break322_g51421.z;
				float lerpResult410_g51421 = lerp( 0.2 , 1.0 , Wind_Power369_g51421);
				half Wind_Power_203109_g50723 = lerpResult410_g51421;
				half Mesh_Motion_260_g50723 = inputMesh.ase_texcoord3.y;
				#ifdef TVE_IS_GRASS_SHADER
				float2 staticSwitch160_g51439 = TVE_NoiseSpeed_Grass;
				#else
				float2 staticSwitch160_g51439 = TVE_NoiseSpeed_Vegetation;
				#endif
				float3 localObjectPosition_UNITY_MATRIX_M14_g51441 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g51442 = localObjectPosition_UNITY_MATRIX_M14_g51441;
				float3 appendResult93_g51441 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				float3 temp_output_91_0_g51441 = ( appendResult93_g51441 * _vertex_pivot_mode );
				float3 PivotsOnly105_g51441 = (mul( GetObjectToWorldMatrix(), float4( temp_output_91_0_g51441 , 0.0 ) ).xyz).xyz;
				half3 On20_g51442 = ( localObjectPosition_UNITY_MATRIX_M14_g51441 + PivotsOnly105_g51441 );
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g51442 = On20_g51442;
				#else
				float3 staticSwitch14_g51442 = Off19_g51442;
				#endif
				half3 ObjectData20_g51443 = staticSwitch14_g51442;
				half3 WorldData19_g51443 = Off19_g51442;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51443 = WorldData19_g51443;
				#else
				float3 staticSwitch14_g51443 = ObjectData20_g51443;
				#endif
				float3 temp_output_66_0_g51441 = staticSwitch14_g51443;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g51441 = ( temp_output_66_0_g51441 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g51441 = temp_output_66_0_g51441;
				#endif
				half3 ObjectData20_g51440 = staticSwitch13_g51441;
				half3 WorldData19_g51440 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51440 = WorldData19_g51440;
				#else
				float3 staticSwitch14_g51440 = ObjectData20_g51440;
				#endif
				#ifdef TVE_IS_GRASS_SHADER
				float2 staticSwitch164_g51439 = (ase_worldPos).xz;
				#else
				float2 staticSwitch164_g51439 = (staticSwitch14_g51440).xz;
				#endif
				#ifdef TVE_IS_GRASS_SHADER
				float staticSwitch161_g51439 = TVE_NoiseSize_Grass;
				#else
				float staticSwitch161_g51439 = TVE_NoiseSize_Vegetation;
				#endif
				float2 panner73_g51439 = ( _TimeParameters.x * staticSwitch160_g51439 + ( staticSwitch164_g51439 * staticSwitch161_g51439 ));
				float4 tex2DNode75_g51439 = SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, samplerTVE_NoiseTex, panner73_g51439, 0.0 );
				float4 saferPower77_g51439 = max( abs( tex2DNode75_g51439 ) , 0.0001 );
				half Wind_Power2223_g50723 = Wind_Power369_g51421;
				float temp_output_167_0_g51439 = Wind_Power2223_g50723;
				float lerpResult168_g51439 = lerp( 1.5 , 0.25 , temp_output_167_0_g51439);
				float4 temp_cast_7 = (lerpResult168_g51439).xxxx;
				float4 break142_g51439 = pow( saferPower77_g51439 , temp_cast_7 );
				half Global_NoiseTex_R34_g50723 = break142_g51439.r;
				half Input_Speed62_g51479 = _MotionSpeed_20;
				float mulTime354_g51479 = _TimeParameters.x * Input_Speed62_g51479;
				float3 localObjectPosition_UNITY_MATRIX_M14_g51497 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g51498 = localObjectPosition_UNITY_MATRIX_M14_g51497;
				float3 appendResult93_g51497 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				float3 temp_output_91_0_g51497 = ( appendResult93_g51497 * _vertex_pivot_mode );
				float3 PivotsOnly105_g51497 = (mul( GetObjectToWorldMatrix(), float4( temp_output_91_0_g51497 , 0.0 ) ).xyz).xyz;
				half3 On20_g51498 = ( localObjectPosition_UNITY_MATRIX_M14_g51497 + PivotsOnly105_g51497 );
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g51498 = On20_g51498;
				#else
				float3 staticSwitch14_g51498 = Off19_g51498;
				#endif
				half3 ObjectData20_g51499 = staticSwitch14_g51498;
				half3 WorldData19_g51499 = Off19_g51498;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51499 = WorldData19_g51499;
				#else
				float3 staticSwitch14_g51499 = ObjectData20_g51499;
				#endif
				float3 temp_output_66_0_g51497 = staticSwitch14_g51499;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g51497 = ( temp_output_66_0_g51497 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g51497 = temp_output_66_0_g51497;
				#endif
				float3 break9_g51497 = staticSwitch13_g51497;
				half Variation_Complex102_g51495 = frac( ( inputMesh.ase_color.r + ( break9_g51497.x + break9_g51497.z ) ) );
				float ObjectData20_g51496 = Variation_Complex102_g51495;
				half Variation_Simple105_g51495 = inputMesh.ase_color.r;
				float WorldData19_g51496 = Variation_Simple105_g51495;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g51496 = WorldData19_g51496;
				#else
				float staticSwitch14_g51496 = ObjectData20_g51496;
				#endif
				half Motion_Variation3073_g50723 = staticSwitch14_g51496;
				float temp_output_3154_0_g50723 = ( _MotionVariation_20 * Motion_Variation3073_g50723 );
				float Motion_Variation284_g51479 = temp_output_3154_0_g50723;
				float Motion_Scale287_g51479 = ( _MotionScale_20 * ase_worldPos.x );
				half Variation127_g51521 = temp_output_3154_0_g50723;
				float lerpResult110_g51521 = lerp( ceil( saturate( ( frac( ( Variation127_g51521 + 0.3576 ) ) - 0.6 ) ) ) , ceil( saturate( ( frac( ( Variation127_g51521 + 0.1715 ) ) - 0.4 ) ) ) , (sin( _TimeParameters.x )*0.5 + 0.5));
				float temp_output_112_0_g51521 = Wind_Power2223_g50723;
				float lerpResult111_g51521 = lerp( lerpResult110_g51521 , 1.0 , ( temp_output_112_0_g51521 * temp_output_112_0_g51521 * temp_output_112_0_g51521 * temp_output_112_0_g51521 ));
				float lerpResult126_g51521 = lerp( lerpResult111_g51521 , 1.0 , ( 1.0 - saturate( Variation127_g51521 ) ));
				half Motion_Rolling138_g50723 = ( ( _MotionAmplitude_20 * Motion_Max_Rolling1137_g50723 ) * ( Wind_Power_203109_g50723 * Mesh_Motion_260_g50723 * Global_NoiseTex_R34_g50723 * _VertexRollingMode ) * sin( ( mulTime354_g51479 + Motion_Variation284_g51479 + Motion_Scale287_g51479 ) ) * lerpResult126_g51521 );
				half Angle44_g51512 = Motion_Rolling138_g50723;
				half3 VertexPos40_g51437 = ( VertexPosRotationAxis50_g51512 + ( VertexPosOtherAxis82_g51512 * cos( Angle44_g51512 ) ) + ( cross( float3(0,1,0) , VertexPosOtherAxis82_g51512 ) * sin( Angle44_g51512 ) ) );
				float3 appendResult74_g51437 = (float3(VertexPos40_g51437.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g51437 = appendResult74_g51437;
				float3 break84_g51437 = VertexPos40_g51437;
				float3 appendResult81_g51437 = (float3(0.0 , break84_g51437.y , break84_g51437.z));
				half3 VertexPosOtherAxis82_g51437 = appendResult81_g51437;
				float ObjectData20_g51438 = 3.14;
				float Bounds_Height374_g50723 = _MaxBoundsInfo.y;
				float WorldData19_g51438 = ( Bounds_Height374_g50723 * 3.14 );
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g51438 = WorldData19_g51438;
				#else
				float staticSwitch14_g51438 = ObjectData20_g51438;
				#endif
				float Motion_Max_Bending1133_g50723 = staticSwitch14_g51438;
				float lerpResult376_g51421 = lerp( 0.1 , 1.0 , Wind_Power369_g51421);
				half Wind_Power_103106_g50723 = lerpResult376_g51421;
				float3 appendResult397_g51421 = (float3(break322_g51421.x , 0.0 , break322_g51421.y));
				float3 temp_output_398_0_g51421 = (appendResult397_g51421*2.0 + -1.0);
				float3 ase_parentObjectScale = ( 1.0 / float3( length( GetWorldToObjectMatrix()[ 0 ].xyz ), length( GetWorldToObjectMatrix()[ 1 ].xyz ), length( GetWorldToObjectMatrix()[ 2 ].xyz ) ) );
				float3 temp_output_339_0_g51421 = ( mul( GetWorldToObjectMatrix(), float4( temp_output_398_0_g51421 , 0.0 ) ).xyz * ase_parentObjectScale );
				half2 Wind_DirectionOS39_g50723 = (temp_output_339_0_g51421).xz;
				half Input_Speed62_g51477 = _MotionSpeed_10;
				float mulTime373_g51477 = _TimeParameters.x * Input_Speed62_g51477;
				half Motion_Variation284_g51477 = ( _MotionVariation_10 * Motion_Variation3073_g50723 );
				float2 appendResult344_g51477 = (float2(ase_worldPos.x , ase_worldPos.z));
				float2 Motion_Scale287_g51477 = ( _MotionScale_10 * appendResult344_g51477 );
				half2 Sine_MinusOneToOne281_g51477 = sin( ( mulTime373_g51477 + Motion_Variation284_g51477 + Motion_Scale287_g51477 ) );
				float2 temp_cast_12 = (1.0).xx;
				half Input_Turbulence327_g51477 = Global_NoiseTex_R34_g50723;
				float2 lerpResult321_g51477 = lerp( Sine_MinusOneToOne281_g51477 , temp_cast_12 , Input_Turbulence327_g51477);
				half2 Motion_Bending2258_g50723 = ( ( _MotionAmplitude_10 * Motion_Max_Bending1133_g50723 ) * Wind_Power_103106_g50723 * Wind_DirectionOS39_g50723 * Global_NoiseTex_R34_g50723 * lerpResult321_g51477 );
				half Interaction_Amplitude4137_g50723 = _InteractionAmplitude;
				float3 localObjectPosition_UNITY_MATRIX_M14_g51526 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g51527 = localObjectPosition_UNITY_MATRIX_M14_g51526;
				float3 appendResult93_g51526 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				float3 temp_output_91_0_g51526 = ( appendResult93_g51526 * _vertex_pivot_mode );
				float3 PivotsOnly105_g51526 = (mul( GetObjectToWorldMatrix(), float4( temp_output_91_0_g51526 , 0.0 ) ).xyz).xyz;
				half3 On20_g51527 = ( localObjectPosition_UNITY_MATRIX_M14_g51526 + PivotsOnly105_g51526 );
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g51527 = On20_g51527;
				#else
				float3 staticSwitch14_g51527 = Off19_g51527;
				#endif
				half3 ObjectData20_g51528 = staticSwitch14_g51527;
				half3 WorldData19_g51528 = Off19_g51527;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51528 = WorldData19_g51528;
				#else
				float3 staticSwitch14_g51528 = ObjectData20_g51528;
				#endif
				float3 temp_output_66_0_g51526 = staticSwitch14_g51528;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g51526 = ( temp_output_66_0_g51526 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g51526 = temp_output_66_0_g51526;
				#endif
				half3 ObjectData20_g51525 = staticSwitch13_g51526;
				half3 WorldData19_g51525 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51525 = WorldData19_g51525;
				#else
				float3 staticSwitch14_g51525 = ObjectData20_g51525;
				#endif
				float3 Position83_g51524 = staticSwitch14_g51525;
				float temp_output_84_0_g51524 = _LayerReactValue;
				float4 lerpResult87_g51524 = lerp( TVE_ReactParams , SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ReactTex, samplerTVE_ReactTex, ( (TVE_ReactCoord).zw + ( (TVE_ReactCoord).xy * (Position83_g51524).xz ) ),temp_output_84_0_g51524, 0.0 ) , TVE_ReactUsage[(int)temp_output_84_0_g51524]);
				half4 Global_React_Params4173_g50723 = lerpResult87_g51524;
				float4 break322_g51522 = Global_React_Params4173_g50723;
				half Interaction_Mask66_g50723 = break322_g51522.z;
				float3 appendResult397_g51522 = (float3(break322_g51522.x , 0.0 , break322_g51522.y));
				float3 temp_output_398_0_g51522 = (appendResult397_g51522*2.0 + -1.0);
				float3 temp_output_339_0_g51522 = ( mul( GetWorldToObjectMatrix(), float4( temp_output_398_0_g51522 , 0.0 ) ).xyz * ase_parentObjectScale );
				half2 Interaction_DirectionOS4158_g50723 = (temp_output_339_0_g51522).xz;
				float lerpResult3307_g50723 = lerp( 1.0 , Motion_Variation3073_g50723 , _InteractionVariation);
				half2 Motion_Interaction53_g50723 = ( Interaction_Amplitude4137_g50723 * Motion_Max_Bending1133_g50723 * Interaction_Mask66_g50723 * Interaction_Mask66_g50723 * Interaction_DirectionOS4158_g50723 * lerpResult3307_g50723 );
				float2 lerpResult109_g50723 = lerp( Motion_Bending2258_g50723 , Motion_Interaction53_g50723 , ( Interaction_Mask66_g50723 * saturate( Interaction_Amplitude4137_g50723 ) ));
				half Mesh_Motion_182_g50723 = inputMesh.ase_texcoord3.x;
				float2 break143_g50723 = ( lerpResult109_g50723 * Mesh_Motion_182_g50723 );
				half Motion_Z190_g50723 = break143_g50723.y;
				half Angle44_g51437 = Motion_Z190_g50723;
				half3 VertexPos40_g51436 = ( VertexPosRotationAxis50_g51437 + ( VertexPosOtherAxis82_g51437 * cos( Angle44_g51437 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g51437 ) * sin( Angle44_g51437 ) ) );
				float3 appendResult74_g51436 = (float3(0.0 , 0.0 , VertexPos40_g51436.z));
				half3 VertexPosRotationAxis50_g51436 = appendResult74_g51436;
				float3 break84_g51436 = VertexPos40_g51436;
				float3 appendResult81_g51436 = (float3(break84_g51436.x , break84_g51436.y , 0.0));
				half3 VertexPosOtherAxis82_g51436 = appendResult81_g51436;
				half Motion_X216_g50723 = break143_g50723.x;
				half Angle44_g51436 = -Motion_X216_g50723;
				float3 Vertex_Motion_Object833_g50723 = ( VertexPosRotationAxis50_g51436 + ( VertexPosOtherAxis82_g51436 * cos( Angle44_g51436 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g51436 ) * sin( Angle44_g51436 ) ) );
				float3 temp_output_3474_0_g50723 = ( PositionOS3588_g50723 - Mesh_PivotsOS2291_g50723 );
				float3 appendResult2047_g50723 = (float3(Motion_Rolling138_g50723 , 0.0 , -Motion_Rolling138_g50723));
				float3 appendResult2043_g50723 = (float3(Motion_X216_g50723 , 0.0 , Motion_Z190_g50723));
				float3 Vertex_Motion_World1118_g50723 = ( ( temp_output_3474_0_g50723 + appendResult2047_g50723 ) + appendResult2043_g50723 );
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch3312_g50723 = Vertex_Motion_World1118_g50723;
				#else
				float3 staticSwitch3312_g50723 = ( Vertex_Motion_Object833_g50723 + ( 0.0 * _VertexDataMode ) );
				#endif
				half Global_Vertex_Size174_g50723 = break322_g51522.w;
				float lerpResult346_g50723 = lerp( 1.0 , Global_Vertex_Size174_g50723 , _GlobalSize);
				float3 appendResult3480_g50723 = (float3(lerpResult346_g50723 , lerpResult346_g50723 , lerpResult346_g50723));
				half3 ObjectData20_g51435 = appendResult3480_g50723;
				half3 _Vector11 = half3(1,1,1);
				half3 WorldData19_g51435 = _Vector11;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51435 = WorldData19_g51435;
				#else
				float3 staticSwitch14_g51435 = ObjectData20_g51435;
				#endif
				half3 Vertex_Size1741_g50723 = staticSwitch14_g51435;
				half3 _Vector5 = half3(1,1,1);
				float3 Vertex_SizeFade1740_g50723 = _Vector5;
				half3 Grass_Coverage2661_g50723 = half3(0,0,0);
				float3 Final_VertexPosition890_g50723 = ( ( staticSwitch3312_g50723 * Vertex_Size1741_g50723 * Vertex_SizeFade1740_g50723 ) + Mesh_PivotsOS2291_g50723 + Grass_Coverage2661_g50723 );
				
				float2 vertexToFrag11_g51423 = ( ( inputMesh.ase_texcoord.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				outputPackedVaryingsMeshToPS.ase_texcoord3.xy = vertexToFrag11_g51423;
				float2 appendResult21_g51510 = (float2(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord.w));
				float2 Mesh_DetailCoord3_g50723 = appendResult21_g51510;
				float2 vertexToFrag11_g51446 = ( ( Mesh_DetailCoord3_g50723 * (_SecondUVs).xy ) + (_SecondUVs).zw );
				outputPackedVaryingsMeshToPS.ase_texcoord3.zw = vertexToFrag11_g51446;
				half Mesh_DetailMask90_g50723 = inputMesh.ase_color.b;
				float vertexToFrag11_g51546 = ( ( Mesh_DetailMask90_g50723 - 0.5 ) + _DetailMeshValue );
				outputPackedVaryingsMeshToPS.ase_texcoord4.x = vertexToFrag11_g51546;
				
				float3 ase_worldNormal = TransformObjectToWorldNormal(inputMesh.normalOS);
				float3 ase_worldTangent = TransformObjectToWorldDir(inputMesh.tangentOS.xyz);
				float ase_vertexTangentSign = inputMesh.tangentOS.w * unity_WorldTransformParams.w;
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				outputPackedVaryingsMeshToPS.ase_texcoord4.yzw = ase_worldBitangent;
				float3 vertexToFrag3890_g50723 = ase_worldPos;
				outputPackedVaryingsMeshToPS.ase_texcoord5.xyz = vertexToFrag3890_g50723;
				
				float temp_output_7_0_g51545 = TVE_CameraFadeStart;
				float saferPower3976_g50723 = max( saturate( ( ( distance( ase_worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g51545 ) / ( TVE_CameraFadeEnd - temp_output_7_0_g51545 ) ) ) , 0.0001 );
				float temp_output_3976_0_g50723 = pow( saferPower3976_g50723 , _FadeCameraValue );
				float vertexToFrag11_g51542 = temp_output_3976_0_g50723;
				outputPackedVaryingsMeshToPS.ase_texcoord5.w = vertexToFrag11_g51542;
				

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = Final_VertexPosition890_g50723;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS =  inputMesh.normalOS ;
				inputMesh.tangentOS =  inputMesh.tangentOS ;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				float3 normalWS = TransformObjectToWorldNormal(inputMesh.normalOS);
				float4 tangentWS = float4(TransformObjectToWorldDir(inputMesh.tangentOS.xyz), inputMesh.tangentOS.w);

				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.interp00.xyz = positionRWS;
				outputPackedVaryingsMeshToPS.interp01.xyz = normalWS;
				outputPackedVaryingsMeshToPS.interp02.xyzw = tangentWS;
				return outputPackedVaryingsMeshToPS;
			}
			
			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			#if defined(WRITE_NORMAL_BUFFER) && defined(WRITE_MSAA_DEPTH)
				#define SV_TARGET_DECAL SV_Target2
			#elif defined(WRITE_NORMAL_BUFFER) || defined(WRITE_MSAA_DEPTH)
				#define SV_TARGET_DECAL SV_Target2
			#else
				#define SV_TARGET_DECAL SV_Target0
			#endif
			void Frag( PackedVaryingsMeshToPS packedInput
						#ifdef WRITE_NORMAL_BUFFER
						, out float4 outNormalBuffer : SV_Target0
							#ifdef WRITE_MSAA_DEPTH
							, out float1 depthColor : SV_Target1
							#endif
						#elif defined(WRITE_MSAA_DEPTH)
						, out float4 outNormalBuffer : SV_Target0
						, out float1 depthColor : SV_Target1
						#elif defined(SCENESELECTIONPASS)
						, out float4 outColor : SV_Target0
						#endif
						#if defined(WRITE_DECAL_BUFFER) && !defined(_DISABLE_DECALS)
						, out float4 outDecalBuffer : SV_TARGET_DECAL
						#endif
						#ifdef _DEPTHOFFSET_ON
						, out float outputDepth : SV_Depth
						#endif
						
					)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );

				float3 positionRWS = packedInput.interp00.xyz;
				float3 normalWS = packedInput.interp01.xyz;
				float4 tangentWS = packedInput.interp02.xyzw;

				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);

				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				input.positionRWS = positionRWS;
				input.tangentToWorld = BuildTangentToWorld(tangentWS, normalWS);

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false );
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				SmoothSurfaceDescription surfaceDescription = (SmoothSurfaceDescription)0;
				float2 vertexToFrag11_g51423 = packedInput.ase_texcoord3.xy;
				half2 Main_UVs15_g50723 = vertexToFrag11_g51423;
				float3 unpack4112_g50723 = UnpackNormalScale( SAMPLE_TEXTURE2D( _MainNormalTex, sampler_MainAlbedoTex, Main_UVs15_g50723 ), _MainNormalValue );
				unpack4112_g50723.z = lerp( 1, unpack4112_g50723.z, saturate(_MainNormalValue) );
				half3 Main_Normal137_g50723 = unpack4112_g50723;
				float2 vertexToFrag11_g51446 = packedInput.ase_texcoord3.zw;
				half2 Second_UVs17_g50723 = vertexToFrag11_g51446;
				float3 unpack4114_g50723 = UnpackNormalScale( SAMPLE_TEXTURE2D( _SecondNormalTex, sampler_SecondMaskTex, Second_UVs17_g50723 ), _SecondNormalValue );
				unpack4114_g50723.z = lerp( 1, unpack4114_g50723.z, saturate(_SecondNormalValue) );
				half3 Second_Normal179_g50723 = unpack4114_g50723;
				float vertexToFrag11_g51546 = packedInput.ase_texcoord4.x;
				float temp_output_3919_0_g50723 = vertexToFrag11_g51546;
				half Blend_Source1540_g50723 = temp_output_3919_0_g50723;
				float4 tex2DNode35_g50723 = SAMPLE_TEXTURE2D( _MainMaskTex, sampler_MainAlbedoTex, Main_UVs15_g50723 );
				half Main_Mask57_g50723 = tex2DNode35_g50723.b;
				float4 tex2DNode33_g50723 = SAMPLE_TEXTURE2D( _SecondMaskTex, sampler_SecondMaskTex, Second_UVs17_g50723 );
				half Second_Mask81_g50723 = tex2DNode33_g50723.b;
				float lerpResult1327_g50723 = lerp( Main_Mask57_g50723 , Second_Mask81_g50723 , _DetailMaskMode);
				float lerpResult4058_g50723 = lerp( lerpResult1327_g50723 , ( 1.0 - lerpResult1327_g50723 ) , _DetailMaskInvertMode);
				float temp_output_7_0_g51551 = _DetailBlendMinValue;
				half Mask_Detail147_g50723 = saturate( ( ( saturate( ( Blend_Source1540_g50723 + ( Blend_Source1540_g50723 * lerpResult4058_g50723 ) ) ) - temp_output_7_0_g51551 ) / ( _DetailBlendMaxValue - temp_output_7_0_g51551 ) ) );
				float3 lerpResult230_g50723 = lerp( float3( 0,0,1 ) , Second_Normal179_g50723 , Mask_Detail147_g50723);
				float3 lerpResult3372_g50723 = lerp( float3( 0,0,1 ) , Main_Normal137_g50723 , _DetailNormalValue);
				float3 lerpResult3376_g50723 = lerp( Main_Normal137_g50723 , BlendNormal( lerpResult3372_g50723 , Second_Normal179_g50723 ) , Mask_Detail147_g50723);
				#if defined(TVE_DETAIL_BLEND_OVERLAY)
				float3 staticSwitch4063_g50723 = BlendNormal( Main_Normal137_g50723 , lerpResult230_g50723 );
				#elif defined(TVE_DETAIL_BLEND_REPLACE)
				float3 staticSwitch4063_g50723 = lerpResult3376_g50723;
				#else
				float3 staticSwitch4063_g50723 = BlendNormal( Main_Normal137_g50723 , lerpResult230_g50723 );
				#endif
				#if defined(TVE_DETAIL_MODE_OFF)
				float3 staticSwitch267_g50723 = Main_Normal137_g50723;
				#elif defined(TVE_DETAIL_MODE_ON)
				float3 staticSwitch267_g50723 = staticSwitch4063_g50723;
				#else
				float3 staticSwitch267_g50723 = Main_Normal137_g50723;
				#endif
				float3 temp_output_13_0_g51558 = staticSwitch267_g50723;
				float3 switchResult12_g51558 = (((isFrontFace>0)?(temp_output_13_0_g51558):(( temp_output_13_0_g51558 * _render_normals_options ))));
				half3 Blend_Normal312_g50723 = switchResult12_g51558;
				half3 Final_Normal366_g50723 = Blend_Normal312_g50723;
				
				half Main_Smoothness227_g50723 = ( tex2DNode35_g50723.a * _MainSmoothnessValue );
				half Second_Smoothness236_g50723 = ( tex2DNode33_g50723.a * _SecondSmoothnessValue );
				float lerpResult266_g50723 = lerp( Main_Smoothness227_g50723 , Second_Smoothness236_g50723 , Mask_Detail147_g50723);
				#if defined(TVE_DETAIL_BLEND_OVERLAY)
				float staticSwitch4065_g50723 = Main_Smoothness227_g50723;
				#elif defined(TVE_DETAIL_BLEND_REPLACE)
				float staticSwitch4065_g50723 = lerpResult266_g50723;
				#else
				float staticSwitch4065_g50723 = Main_Smoothness227_g50723;
				#endif
				#if defined(TVE_DETAIL_MODE_OFF)
				float staticSwitch297_g50723 = Main_Smoothness227_g50723;
				#elif defined(TVE_DETAIL_MODE_ON)
				float staticSwitch297_g50723 = staticSwitch4065_g50723;
				#else
				float staticSwitch297_g50723 = Main_Smoothness227_g50723;
				#endif
				half Blend_Smoothness314_g50723 = staticSwitch297_g50723;
				half Global_OverlaySmoothness311_g50723 = TVE_OverlaySmoothness;
				float3 ase_worldBitangent = packedInput.ase_texcoord4.yzw;
				float3 tanToWorld0 = float3( tangentWS.xyz.x, ase_worldBitangent.x, normalWS.x );
				float3 tanToWorld1 = float3( tangentWS.xyz.y, ase_worldBitangent.y, normalWS.y );
				float3 tanToWorld2 = float3( tangentWS.xyz.z, ase_worldBitangent.z, normalWS.z );
				float3 tanNormal4099_g50723 = Main_Normal137_g50723;
				float3 worldNormal4099_g50723 = float3(dot(tanToWorld0,tanNormal4099_g50723), dot(tanToWorld1,tanNormal4099_g50723), dot(tanToWorld2,tanNormal4099_g50723));
				float3 Main_Normal_WS4101_g50723 = worldNormal4099_g50723;
				float lerpResult3567_g50723 = lerp( _OverlayBottomValue , 1.0 , Main_Normal_WS4101_g50723.y);
				float4 tex2DNode29_g50723 = SAMPLE_TEXTURE2D( _MainAlbedoTex, sampler_MainAlbedoTex, Main_UVs15_g50723 );
				half Main_AlbedoTex_G3526_g50723 = tex2DNode29_g50723.g;
				half Second_AlbedoTex_G3581_g50723 = (SAMPLE_TEXTURE2D( _SecondAlbedoTex, sampler_SecondMaskTex, Second_UVs17_g50723 )).g;
				float lerpResult3579_g50723 = lerp( Main_AlbedoTex_G3526_g50723 , Second_AlbedoTex_G3581_g50723 , Mask_Detail147_g50723);
				#if defined(TVE_DETAIL_MODE_OFF)
				float staticSwitch3574_g50723 = Main_AlbedoTex_G3526_g50723;
				#elif defined(TVE_DETAIL_MODE_ON)
				float staticSwitch3574_g50723 = lerpResult3579_g50723;
				#else
				float staticSwitch3574_g50723 = Main_AlbedoTex_G3526_g50723;
				#endif
				float3 vertexToFrag3890_g50723 = packedInput.ase_texcoord5.xyz;
				float3 PositionWS_PerVertex3905_g50723 = vertexToFrag3890_g50723;
				float3 Position82_g51514 = PositionWS_PerVertex3905_g50723;
				float temp_output_84_0_g51514 = _LayerExtrasValue;
				float4 lerpResult88_g51514 = lerp( TVE_ExtrasParams , SAMPLE_TEXTURE2D_ARRAY( TVE_ExtrasTex, samplerTVE_ExtrasTex, ( (TVE_ExtrasCoord).zw + ( (TVE_ExtrasCoord).xy * (Position82_g51514).xz ) ),temp_output_84_0_g51514 ) , TVE_ExtrasUsage[(int)temp_output_84_0_g51514]);
				float4 break89_g51514 = lerpResult88_g51514;
				half Global_Extras_Overlay156_g50723 = break89_g51514.b;
				float temp_output_1025_0_g50723 = ( _GlobalOverlay * Global_Extras_Overlay156_g50723 );
				half Overlay_Commons1365_g50723 = temp_output_1025_0_g50723;
				float temp_output_7_0_g51561 = _OverlayMaskMinValue;
				half Overlay_Mask269_g50723 = saturate( ( ( ( ( ( lerpResult3567_g50723 * 0.5 ) + staticSwitch3574_g50723 ) * Overlay_Commons1365_g50723 ) - temp_output_7_0_g51561 ) / ( _OverlayMaskMaxValue - temp_output_7_0_g51561 ) ) );
				float lerpResult343_g50723 = lerp( Blend_Smoothness314_g50723 , Global_OverlaySmoothness311_g50723 , Overlay_Mask269_g50723);
				half Final_Smoothness371_g50723 = lerpResult343_g50723;
				half Global_Extras_Wetness305_g50723 = break89_g51514.g;
				float lerpResult3673_g50723 = lerp( 0.0 , Global_Extras_Wetness305_g50723 , _GlobalWetness);
				half Final_SmoothnessAndWetness4130_g50723 = saturate( ( Final_Smoothness371_g50723 + lerpResult3673_g50723 ) );
				
				float localCustomAlphaClip3735_g50723 = ( 0.0 );
				float vertexToFrag11_g51542 = packedInput.ase_texcoord5.w;
				half Fade_Camera3743_g50723 = vertexToFrag11_g51542;
				half Final_AlphaFade3727_g50723 = ( 1.0 * Fade_Camera3743_g50723 );
				float temp_output_41_0_g51554 = Final_AlphaFade3727_g50723;
				float Main_Alpha316_g50723 = ( _MainColor.a * tex2DNode29_g50723.a );
				half AlphaTreshold2132_g50723 = _Cutoff;
				#ifdef TVE_ALPHA_CLIP
				float staticSwitch3792_g50723 = ( Main_Alpha316_g50723 - ( AlphaTreshold2132_g50723 - 0.5 ) );
				#else
				float staticSwitch3792_g50723 = Main_Alpha316_g50723;
				#endif
				half Final_Alpha3754_g50723 = staticSwitch3792_g50723;
				float temp_output_661_0_g50723 = ( saturate( ( temp_output_41_0_g51554 + ( temp_output_41_0_g51554 * SAMPLE_TEXTURE3D( TVE_ScreenTex3D, samplerTVE_ScreenTex3D, ( TVE_ScreenTexCoord * PositionWS_PerVertex3905_g50723 ) ).r ) ) ) * Final_Alpha3754_g50723 );
				float Alpha3735_g50723 = temp_output_661_0_g50723;
				float Treshold3735_g50723 = 0.5;
				{
				#if TVE_ALPHA_CLIP
				clip(Alpha3735_g50723 - Treshold3735_g50723);
				#endif
				}
				half Final_Clip914_g50723 = saturate( Alpha3735_g50723 );
				
				surfaceDescription.Normal = Final_Normal366_g50723;
				surfaceDescription.Smoothness = Final_SmoothnessAndWetness4130_g50723;
				surfaceDescription.Alpha = Final_Clip914_g50723;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription, input, V, posInput, surfaceData, builtinData);

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif

				#ifdef WRITE_NORMAL_BUFFER
				EncodeIntoNormalBuffer( ConvertSurfaceDataToNormalData( surfaceData ), posInput.positionSS, outNormalBuffer );
				#ifdef WRITE_MSAA_DEPTH
				depthColor = packedInput.positionCS.z;
				#endif
				#elif defined(WRITE_MSAA_DEPTH)
				outNormalBuffer = float4( 0.0, 0.0, 0.0, 1.0 );
				depthColor = packedInput.positionCS.z;
				#elif defined(SCENESELECTIONPASS)
				outColor = float4( _ObjectId, _PassValue, 1.0, 1.0 );
				#endif

				#if defined(WRITE_DECAL_BUFFER) && !defined(_DISABLE_DECALS)
				DecalPrepassData decalPrepassData;
				decalPrepassData.geomNormalWS = surfaceData.geomNormalWS;
				decalPrepassData.decalLayerMask = GetMeshRenderingDecalLayer();
				EncodeIntoDecalPrepassBuffer(decalPrepassData, outDecalBuffer);
				#endif
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "Motion Vectors"
			Tags { "LightMode"="MotionVectors" }

			Cull [_CullMode]

			ZWrite On

			Stencil
			{
				Ref [_StencilRefMV]
				WriteMask [_StencilWriteMaskMV]
				Comp Always
				Pass Replace
				Fail Keep
				ZFail Keep
			}


			HLSLPROGRAM

			#define ASE_NEED_CULLFACE 1
			#define _MATERIAL_FEATURE_SPECULAR_COLOR 1
			#define _ENERGY_CONSERVING_SPECULAR 1
			#pragma multi_compile _ DOTS_INSTANCING_ON
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define _AMBIENT_OCCLUSION 1
			#define HAVE_MESH_MODIFICATION
			#define ASE_SRP_VERSION 100202
			#define ASE_USING_SAMPLING_MACROS 1


			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT
			#pragma shader_feature_local _DOUBLESIDED_ON
			#pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
			#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT
			#pragma shader_feature_local _ALPHATEST_ON

			#define SHADERPASS SHADERPASS_MOTION_VECTORS
			#pragma multi_compile _ WRITE_NORMAL_BUFFER
			#pragma multi_compile _ WRITE_MSAA_DEPTH

			#pragma vertex Vert
			#pragma fragment Frag

			//#define UNITY_MATERIAL_LIT

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#ifdef DEBUG_DISPLAY
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#endif
			
			CBUFFER_START( UnityPerMaterial )
			half4 _DetailBlendRemap;
			half4 _OverlayMaskRemap;
			float4 _NoiseMaskRemap;
			half4 _SubsurfaceMaskRemap;
			half4 _VertexOcclusionRemap;
			float4 _MaxBoundsInfo;
			float4 _SubsurfaceDiffusion_asset;
			half4 _MainColor;
			half4 _MainUVs;
			half4 _SecondColor;
			float4 _GradientMaskRemap;
			float4 _SubsurfaceDiffusion_Asset;
			float4 _Color;
			half4 _VertexOcclusionColor;
			half4 _SecondUVs;
			half4 _ColorsMaskRemap;
			float4 _EmissiveIntensityParams;
			half4 _EmissiveColor;
			half4 _EmissiveUVs;
			half3 _render_normals_options;
			half _MotionVariation_10;
			float _MotionSpeed_10;
			half _MotionAmplitude_10;
			half _MotionScale_20;
			half _MotionVariation_20;
			half _MotionSpeed_20;
			half _VertexRollingMode;
			half _LayerMotionValue;
			half _vertex_pivot_mode;
			half _MotionAmplitude_20;
			half _render_src;
			half _IsStandardShader;
			half _MainSmoothnessValue;
			half _SecondSmoothnessValue;
			half _GlobalWetness;
			half _MainOcclusionValue;
			float _MotionScale_10;
			half _InteractionAmplitude;
			half _EmissiveExposureValue;
			half _VertexOcclusionMinValue;
			half _OverlayMaskMaxValue;
			half _OverlayMaskMinValue;
			half _SecondNormalValue;
			half _LayerExtrasValue;
			half _GlobalOverlay;
			half _DetailNormalValue;
			half _MainNormalValue;
			half _OverlayBottomValue;
			half _DetailBlendMaxValue;
			half _DetailBlendMinValue;
			half _DetailMaskInvertMode;
			half _DetailMaskMode;
			half _DetailMeshValue;
			half _RenderSpecular;
			half _GlobalSize;
			half _VertexDataMode;
			half _InteractionVariation;
			half _LayerReactValue;
			half _VertexOcclusionMaxValue;
			half _render_zw;
			half _IsVersion;
			half _RenderNormals;
			half _VariationMotionMessage;
			half _RenderClip;
			half _Cutoff;
			half _MotionSpace;
			half _GradientCat;
			half _VertexVariationMode;
			half _RenderDecals;
			half _TranslucencyDirectValue;
			half _NoiseCat;
			half _SubsurfaceCat;
			half _LayersSpace;
			half _RenderZWrite;
			half _DetailMode;
			half _EmissiveCat;
			half _RenderMode;
			half _RenderSSR;
			half _SizeFadeCat;
			half _render_dst;
			half _render_cull;
			half _IsBarkShader;
			half _TranslucencyIntensityValue;
			half _TranslucencyNormalValue;
			half _FadeSpace;
			half _DetailSpace;
			half _TranslucencyShadowValue;
			half _EmissiveFlagMode;
			half _TranslucencyHDMessage;
			half _OcclusionCat;
			half _RenderPriority;
			half _TranslucencyAmbientValue;
			half _DetailCat;
			half _VertexMasksMode;
			half _SizeFadeMessage;
			half _MainCat;
			half _SecondOcclusionValue;
			half _ReceiveSpace;
			half _PerspectiveCat;
			half _VariationGlobalsMessage;
			float _SubsurfaceDiffusion;
			half _RenderingCat;
			half _DetailBlendMode;
			half _TranslucencyScatteringValue;
			half _IsTVEShader;
			half _GlobalCat;
			half _RenderCull;
			half _DetailTypeMode;
			half _MotionCat;
			half _FadeCameraValue;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			TEXTURE2D(_MainTex);
			SAMPLER(sampler_MainTex);
			TEXTURE2D(_BumpMap);
			SAMPLER(sampler_BumpMap);
			half4 TVE_MotionParams;
			TEXTURE2D_ARRAY(TVE_MotionTex);
			half4 TVE_MotionCoord;
			SAMPLER(samplerTVE_MotionTex);
			float TVE_MotionUsage[9];
			TEXTURE2D(TVE_NoiseTex);
			float2 TVE_NoiseSpeed_Vegetation;
			float2 TVE_NoiseSpeed_Grass;
			half TVE_NoiseSize_Vegetation;
			half TVE_NoiseSize_Grass;
			SAMPLER(samplerTVE_NoiseTex);
			half4 TVE_ReactParams;
			TEXTURE2D_ARRAY(TVE_ReactTex);
			half4 TVE_ReactCoord;
			SAMPLER(samplerTVE_ReactTex);
			float TVE_ReactUsage[9];
			TEXTURE2D(_MainNormalTex);
			TEXTURE2D(_MainAlbedoTex);
			SAMPLER(sampler_MainAlbedoTex);
			TEXTURE2D(_SecondNormalTex);
			TEXTURE2D(_SecondMaskTex);
			SAMPLER(sampler_SecondMaskTex);
			TEXTURE2D(_MainMaskTex);
			half TVE_OverlaySmoothness;
			TEXTURE2D(_SecondAlbedoTex);
			half4 TVE_ExtrasParams;
			TEXTURE2D_ARRAY(TVE_ExtrasTex);
			half4 TVE_ExtrasCoord;
			SAMPLER(samplerTVE_ExtrasTex);
			float TVE_ExtrasUsage[9];
			half TVE_CameraFadeStart;
			half TVE_CameraFadeEnd;
			TEXTURE3D(TVE_ScreenTex3D);
			half TVE_ScreenTexCoord;
			SAMPLER(samplerTVE_ScreenTex3D);


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#pragma shader_feature_local TVE_ALPHA_CLIP
			#pragma shader_feature_local TVE_VERTEX_DATA_BATCHED
			#pragma shader_feature_local TVE_DETAIL_MODE_OFF TVE_DETAIL_MODE_ON
			#pragma shader_feature_local TVE_DETAIL_BLEND_OVERLAY TVE_DETAIL_BLEND_REPLACE
			//TVE Injection Defines
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			//TVE Pipeline Defines
			#define THE_VEGETATION_ENGINE
			#define IS_HD_PIPELINE
			//TVE HD Pipeline Defines
			#pragma shader_feature_local _DISABLE_DECALS
			#pragma shader_feature_local _DISABLE_SSR
			//TVE Shader Type Defines
			#define TVE_IS_VEGETATION_SHADER


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
				#define ASE_NEED_CULLFACE 1
			#endif


			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float3 previousPositionOS : TEXCOORD4;
				#if defined (_ADD_PRECOMPUTED_VELOCITY)
					float3 precomputedVelocity : TEXCOORD5;
				#endif
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_tangent : TANGENT;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 vmeshPositionCS : SV_Position;
				float3 vmeshInterp00 : TEXCOORD0;
				float3 vpassInterpolators0 : TEXCOORD1; //interpolators0
				float3 vpassInterpolators1 : TEXCOORD2; //interpolators1
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				float4 ase_texcoord7 : TEXCOORD7;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};


			float3 ObjectPosition_UNITY_MATRIX_M(  )
			{
				return float3(UNITY_MATRIX_M[0].w, UNITY_MATRIX_M[1].w, UNITY_MATRIX_M[2].w );
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout SmoothSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// surface data
				surfaceData.perceptualSmoothness =		surfaceDescription.Smoothness;

				// refraction
				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif


				// material features
				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				#endif
				#ifdef ASE_LIT_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				// others
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				// normals
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				normalTS = surfaceDescription.Normal;
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );

				// decals
				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs.tangentToWorld[2], surfaceDescription.Alpha);
					ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
				}
				#endif

				bentNormalWS = surfaceData.normalWS;
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#endif

				// debug
				#if defined(DEBUG_DISPLAY)
				if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				{
					surfaceData.metallic = 0;
				}
				ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif
			}

			void GetSurfaceAndBuiltinData(SmoothSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				ApplyDoubleSidedFlipOrMirror( fragInputs, doubleSidedConstants );

				#ifdef _ALPHATEST_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS );

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			AttributesMesh ApplyMeshModification(AttributesMesh inputMesh, float3 timeParameters, inout PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS )
			{
				_TimeParameters.xyz = timeParameters;
				float3 PositionOS3588_g50723 = inputMesh.positionOS;
				half3 _Vector1 = half3(0,0,0);
				half3 Mesh_PivotsOS2291_g50723 = _Vector1;
				float3 temp_output_2283_0_g50723 = ( PositionOS3588_g50723 - Mesh_PivotsOS2291_g50723 );
				half3 VertexPos40_g51512 = temp_output_2283_0_g50723;
				float3 appendResult74_g51512 = (float3(0.0 , VertexPos40_g51512.y , 0.0));
				float3 VertexPosRotationAxis50_g51512 = appendResult74_g51512;
				float3 break84_g51512 = VertexPos40_g51512;
				float3 appendResult81_g51512 = (float3(break84_g51512.x , 0.0 , break84_g51512.z));
				float3 VertexPosOtherAxis82_g51512 = appendResult81_g51512;
				float ObjectData20_g51480 = 3.14;
				float Bounds_Radius121_g50723 = _MaxBoundsInfo.x;
				float WorldData19_g51480 = Bounds_Radius121_g50723;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g51480 = WorldData19_g51480;
				#else
				float staticSwitch14_g51480 = ObjectData20_g51480;
				#endif
				float Motion_Max_Rolling1137_g50723 = staticSwitch14_g51480;
				float3 localObjectPosition_UNITY_MATRIX_M14_g51483 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g51484 = localObjectPosition_UNITY_MATRIX_M14_g51483;
				float3 appendResult93_g51483 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				float3 temp_output_91_0_g51483 = ( appendResult93_g51483 * _vertex_pivot_mode );
				float3 PivotsOnly105_g51483 = (mul( GetObjectToWorldMatrix(), float4( temp_output_91_0_g51483 , 0.0 ) ).xyz).xyz;
				half3 On20_g51484 = ( localObjectPosition_UNITY_MATRIX_M14_g51483 + PivotsOnly105_g51483 );
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g51484 = On20_g51484;
				#else
				float3 staticSwitch14_g51484 = Off19_g51484;
				#endif
				half3 ObjectData20_g51485 = staticSwitch14_g51484;
				half3 WorldData19_g51485 = Off19_g51484;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51485 = WorldData19_g51485;
				#else
				float3 staticSwitch14_g51485 = ObjectData20_g51485;
				#endif
				float3 temp_output_66_0_g51483 = staticSwitch14_g51485;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g51483 = ( temp_output_66_0_g51483 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g51483 = temp_output_66_0_g51483;
				#endif
				half3 ObjectData20_g51482 = staticSwitch13_g51483;
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.positionOS).xyz ) );
				half3 WorldData19_g51482 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51482 = WorldData19_g51482;
				#else
				float3 staticSwitch14_g51482 = ObjectData20_g51482;
				#endif
				float3 Position83_g51481 = staticSwitch14_g51482;
				float temp_output_84_0_g51481 = _LayerMotionValue;
				float4 lerpResult87_g51481 = lerp( TVE_MotionParams , SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_MotionTex, samplerTVE_MotionTex, ( (TVE_MotionCoord).zw + ( (TVE_MotionCoord).xy * (Position83_g51481).xz ) ),temp_output_84_0_g51481, 0.0 ) , TVE_MotionUsage[(int)temp_output_84_0_g51481]);
				half4 Global_Motion_Params3909_g50723 = lerpResult87_g51481;
				float4 break322_g51421 = Global_Motion_Params3909_g50723;
				half Wind_Power369_g51421 = break322_g51421.z;
				float lerpResult410_g51421 = lerp( 0.2 , 1.0 , Wind_Power369_g51421);
				half Wind_Power_203109_g50723 = lerpResult410_g51421;
				half Mesh_Motion_260_g50723 = inputMesh.ase_texcoord3.y;
				#ifdef TVE_IS_GRASS_SHADER
				float2 staticSwitch160_g51439 = TVE_NoiseSpeed_Grass;
				#else
				float2 staticSwitch160_g51439 = TVE_NoiseSpeed_Vegetation;
				#endif
				float3 localObjectPosition_UNITY_MATRIX_M14_g51441 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g51442 = localObjectPosition_UNITY_MATRIX_M14_g51441;
				float3 appendResult93_g51441 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				float3 temp_output_91_0_g51441 = ( appendResult93_g51441 * _vertex_pivot_mode );
				float3 PivotsOnly105_g51441 = (mul( GetObjectToWorldMatrix(), float4( temp_output_91_0_g51441 , 0.0 ) ).xyz).xyz;
				half3 On20_g51442 = ( localObjectPosition_UNITY_MATRIX_M14_g51441 + PivotsOnly105_g51441 );
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g51442 = On20_g51442;
				#else
				float3 staticSwitch14_g51442 = Off19_g51442;
				#endif
				half3 ObjectData20_g51443 = staticSwitch14_g51442;
				half3 WorldData19_g51443 = Off19_g51442;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51443 = WorldData19_g51443;
				#else
				float3 staticSwitch14_g51443 = ObjectData20_g51443;
				#endif
				float3 temp_output_66_0_g51441 = staticSwitch14_g51443;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g51441 = ( temp_output_66_0_g51441 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g51441 = temp_output_66_0_g51441;
				#endif
				half3 ObjectData20_g51440 = staticSwitch13_g51441;
				half3 WorldData19_g51440 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51440 = WorldData19_g51440;
				#else
				float3 staticSwitch14_g51440 = ObjectData20_g51440;
				#endif
				#ifdef TVE_IS_GRASS_SHADER
				float2 staticSwitch164_g51439 = (ase_worldPos).xz;
				#else
				float2 staticSwitch164_g51439 = (staticSwitch14_g51440).xz;
				#endif
				#ifdef TVE_IS_GRASS_SHADER
				float staticSwitch161_g51439 = TVE_NoiseSize_Grass;
				#else
				float staticSwitch161_g51439 = TVE_NoiseSize_Vegetation;
				#endif
				float2 panner73_g51439 = ( _TimeParameters.x * staticSwitch160_g51439 + ( staticSwitch164_g51439 * staticSwitch161_g51439 ));
				float4 tex2DNode75_g51439 = SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, samplerTVE_NoiseTex, panner73_g51439, 0.0 );
				float4 saferPower77_g51439 = max( abs( tex2DNode75_g51439 ) , 0.0001 );
				half Wind_Power2223_g50723 = Wind_Power369_g51421;
				float temp_output_167_0_g51439 = Wind_Power2223_g50723;
				float lerpResult168_g51439 = lerp( 1.5 , 0.25 , temp_output_167_0_g51439);
				float4 temp_cast_7 = (lerpResult168_g51439).xxxx;
				float4 break142_g51439 = pow( saferPower77_g51439 , temp_cast_7 );
				half Global_NoiseTex_R34_g50723 = break142_g51439.r;
				half Input_Speed62_g51479 = _MotionSpeed_20;
				float mulTime354_g51479 = _TimeParameters.x * Input_Speed62_g51479;
				float3 localObjectPosition_UNITY_MATRIX_M14_g51497 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g51498 = localObjectPosition_UNITY_MATRIX_M14_g51497;
				float3 appendResult93_g51497 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				float3 temp_output_91_0_g51497 = ( appendResult93_g51497 * _vertex_pivot_mode );
				float3 PivotsOnly105_g51497 = (mul( GetObjectToWorldMatrix(), float4( temp_output_91_0_g51497 , 0.0 ) ).xyz).xyz;
				half3 On20_g51498 = ( localObjectPosition_UNITY_MATRIX_M14_g51497 + PivotsOnly105_g51497 );
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g51498 = On20_g51498;
				#else
				float3 staticSwitch14_g51498 = Off19_g51498;
				#endif
				half3 ObjectData20_g51499 = staticSwitch14_g51498;
				half3 WorldData19_g51499 = Off19_g51498;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51499 = WorldData19_g51499;
				#else
				float3 staticSwitch14_g51499 = ObjectData20_g51499;
				#endif
				float3 temp_output_66_0_g51497 = staticSwitch14_g51499;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g51497 = ( temp_output_66_0_g51497 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g51497 = temp_output_66_0_g51497;
				#endif
				float3 break9_g51497 = staticSwitch13_g51497;
				half Variation_Complex102_g51495 = frac( ( inputMesh.ase_color.r + ( break9_g51497.x + break9_g51497.z ) ) );
				float ObjectData20_g51496 = Variation_Complex102_g51495;
				half Variation_Simple105_g51495 = inputMesh.ase_color.r;
				float WorldData19_g51496 = Variation_Simple105_g51495;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g51496 = WorldData19_g51496;
				#else
				float staticSwitch14_g51496 = ObjectData20_g51496;
				#endif
				half Motion_Variation3073_g50723 = staticSwitch14_g51496;
				float temp_output_3154_0_g50723 = ( _MotionVariation_20 * Motion_Variation3073_g50723 );
				float Motion_Variation284_g51479 = temp_output_3154_0_g50723;
				float Motion_Scale287_g51479 = ( _MotionScale_20 * ase_worldPos.x );
				half Variation127_g51521 = temp_output_3154_0_g50723;
				float lerpResult110_g51521 = lerp( ceil( saturate( ( frac( ( Variation127_g51521 + 0.3576 ) ) - 0.6 ) ) ) , ceil( saturate( ( frac( ( Variation127_g51521 + 0.1715 ) ) - 0.4 ) ) ) , (sin( _TimeParameters.x )*0.5 + 0.5));
				float temp_output_112_0_g51521 = Wind_Power2223_g50723;
				float lerpResult111_g51521 = lerp( lerpResult110_g51521 , 1.0 , ( temp_output_112_0_g51521 * temp_output_112_0_g51521 * temp_output_112_0_g51521 * temp_output_112_0_g51521 ));
				float lerpResult126_g51521 = lerp( lerpResult111_g51521 , 1.0 , ( 1.0 - saturate( Variation127_g51521 ) ));
				half Motion_Rolling138_g50723 = ( ( _MotionAmplitude_20 * Motion_Max_Rolling1137_g50723 ) * ( Wind_Power_203109_g50723 * Mesh_Motion_260_g50723 * Global_NoiseTex_R34_g50723 * _VertexRollingMode ) * sin( ( mulTime354_g51479 + Motion_Variation284_g51479 + Motion_Scale287_g51479 ) ) * lerpResult126_g51521 );
				half Angle44_g51512 = Motion_Rolling138_g50723;
				half3 VertexPos40_g51437 = ( VertexPosRotationAxis50_g51512 + ( VertexPosOtherAxis82_g51512 * cos( Angle44_g51512 ) ) + ( cross( float3(0,1,0) , VertexPosOtherAxis82_g51512 ) * sin( Angle44_g51512 ) ) );
				float3 appendResult74_g51437 = (float3(VertexPos40_g51437.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g51437 = appendResult74_g51437;
				float3 break84_g51437 = VertexPos40_g51437;
				float3 appendResult81_g51437 = (float3(0.0 , break84_g51437.y , break84_g51437.z));
				half3 VertexPosOtherAxis82_g51437 = appendResult81_g51437;
				float ObjectData20_g51438 = 3.14;
				float Bounds_Height374_g50723 = _MaxBoundsInfo.y;
				float WorldData19_g51438 = ( Bounds_Height374_g50723 * 3.14 );
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g51438 = WorldData19_g51438;
				#else
				float staticSwitch14_g51438 = ObjectData20_g51438;
				#endif
				float Motion_Max_Bending1133_g50723 = staticSwitch14_g51438;
				float lerpResult376_g51421 = lerp( 0.1 , 1.0 , Wind_Power369_g51421);
				half Wind_Power_103106_g50723 = lerpResult376_g51421;
				float3 appendResult397_g51421 = (float3(break322_g51421.x , 0.0 , break322_g51421.y));
				float3 temp_output_398_0_g51421 = (appendResult397_g51421*2.0 + -1.0);
				float3 ase_parentObjectScale = ( 1.0 / float3( length( GetWorldToObjectMatrix()[ 0 ].xyz ), length( GetWorldToObjectMatrix()[ 1 ].xyz ), length( GetWorldToObjectMatrix()[ 2 ].xyz ) ) );
				float3 temp_output_339_0_g51421 = ( mul( GetWorldToObjectMatrix(), float4( temp_output_398_0_g51421 , 0.0 ) ).xyz * ase_parentObjectScale );
				half2 Wind_DirectionOS39_g50723 = (temp_output_339_0_g51421).xz;
				half Input_Speed62_g51477 = _MotionSpeed_10;
				float mulTime373_g51477 = _TimeParameters.x * Input_Speed62_g51477;
				half Motion_Variation284_g51477 = ( _MotionVariation_10 * Motion_Variation3073_g50723 );
				float2 appendResult344_g51477 = (float2(ase_worldPos.x , ase_worldPos.z));
				float2 Motion_Scale287_g51477 = ( _MotionScale_10 * appendResult344_g51477 );
				half2 Sine_MinusOneToOne281_g51477 = sin( ( mulTime373_g51477 + Motion_Variation284_g51477 + Motion_Scale287_g51477 ) );
				float2 temp_cast_12 = (1.0).xx;
				half Input_Turbulence327_g51477 = Global_NoiseTex_R34_g50723;
				float2 lerpResult321_g51477 = lerp( Sine_MinusOneToOne281_g51477 , temp_cast_12 , Input_Turbulence327_g51477);
				half2 Motion_Bending2258_g50723 = ( ( _MotionAmplitude_10 * Motion_Max_Bending1133_g50723 ) * Wind_Power_103106_g50723 * Wind_DirectionOS39_g50723 * Global_NoiseTex_R34_g50723 * lerpResult321_g51477 );
				half Interaction_Amplitude4137_g50723 = _InteractionAmplitude;
				float3 localObjectPosition_UNITY_MATRIX_M14_g51526 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g51527 = localObjectPosition_UNITY_MATRIX_M14_g51526;
				float3 appendResult93_g51526 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				float3 temp_output_91_0_g51526 = ( appendResult93_g51526 * _vertex_pivot_mode );
				float3 PivotsOnly105_g51526 = (mul( GetObjectToWorldMatrix(), float4( temp_output_91_0_g51526 , 0.0 ) ).xyz).xyz;
				half3 On20_g51527 = ( localObjectPosition_UNITY_MATRIX_M14_g51526 + PivotsOnly105_g51526 );
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g51527 = On20_g51527;
				#else
				float3 staticSwitch14_g51527 = Off19_g51527;
				#endif
				half3 ObjectData20_g51528 = staticSwitch14_g51527;
				half3 WorldData19_g51528 = Off19_g51527;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51528 = WorldData19_g51528;
				#else
				float3 staticSwitch14_g51528 = ObjectData20_g51528;
				#endif
				float3 temp_output_66_0_g51526 = staticSwitch14_g51528;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g51526 = ( temp_output_66_0_g51526 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g51526 = temp_output_66_0_g51526;
				#endif
				half3 ObjectData20_g51525 = staticSwitch13_g51526;
				half3 WorldData19_g51525 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51525 = WorldData19_g51525;
				#else
				float3 staticSwitch14_g51525 = ObjectData20_g51525;
				#endif
				float3 Position83_g51524 = staticSwitch14_g51525;
				float temp_output_84_0_g51524 = _LayerReactValue;
				float4 lerpResult87_g51524 = lerp( TVE_ReactParams , SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ReactTex, samplerTVE_ReactTex, ( (TVE_ReactCoord).zw + ( (TVE_ReactCoord).xy * (Position83_g51524).xz ) ),temp_output_84_0_g51524, 0.0 ) , TVE_ReactUsage[(int)temp_output_84_0_g51524]);
				half4 Global_React_Params4173_g50723 = lerpResult87_g51524;
				float4 break322_g51522 = Global_React_Params4173_g50723;
				half Interaction_Mask66_g50723 = break322_g51522.z;
				float3 appendResult397_g51522 = (float3(break322_g51522.x , 0.0 , break322_g51522.y));
				float3 temp_output_398_0_g51522 = (appendResult397_g51522*2.0 + -1.0);
				float3 temp_output_339_0_g51522 = ( mul( GetWorldToObjectMatrix(), float4( temp_output_398_0_g51522 , 0.0 ) ).xyz * ase_parentObjectScale );
				half2 Interaction_DirectionOS4158_g50723 = (temp_output_339_0_g51522).xz;
				float lerpResult3307_g50723 = lerp( 1.0 , Motion_Variation3073_g50723 , _InteractionVariation);
				half2 Motion_Interaction53_g50723 = ( Interaction_Amplitude4137_g50723 * Motion_Max_Bending1133_g50723 * Interaction_Mask66_g50723 * Interaction_Mask66_g50723 * Interaction_DirectionOS4158_g50723 * lerpResult3307_g50723 );
				float2 lerpResult109_g50723 = lerp( Motion_Bending2258_g50723 , Motion_Interaction53_g50723 , ( Interaction_Mask66_g50723 * saturate( Interaction_Amplitude4137_g50723 ) ));
				half Mesh_Motion_182_g50723 = inputMesh.ase_texcoord3.x;
				float2 break143_g50723 = ( lerpResult109_g50723 * Mesh_Motion_182_g50723 );
				half Motion_Z190_g50723 = break143_g50723.y;
				half Angle44_g51437 = Motion_Z190_g50723;
				half3 VertexPos40_g51436 = ( VertexPosRotationAxis50_g51437 + ( VertexPosOtherAxis82_g51437 * cos( Angle44_g51437 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g51437 ) * sin( Angle44_g51437 ) ) );
				float3 appendResult74_g51436 = (float3(0.0 , 0.0 , VertexPos40_g51436.z));
				half3 VertexPosRotationAxis50_g51436 = appendResult74_g51436;
				float3 break84_g51436 = VertexPos40_g51436;
				float3 appendResult81_g51436 = (float3(break84_g51436.x , break84_g51436.y , 0.0));
				half3 VertexPosOtherAxis82_g51436 = appendResult81_g51436;
				half Motion_X216_g50723 = break143_g50723.x;
				half Angle44_g51436 = -Motion_X216_g50723;
				float3 Vertex_Motion_Object833_g50723 = ( VertexPosRotationAxis50_g51436 + ( VertexPosOtherAxis82_g51436 * cos( Angle44_g51436 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g51436 ) * sin( Angle44_g51436 ) ) );
				float3 temp_output_3474_0_g50723 = ( PositionOS3588_g50723 - Mesh_PivotsOS2291_g50723 );
				float3 appendResult2047_g50723 = (float3(Motion_Rolling138_g50723 , 0.0 , -Motion_Rolling138_g50723));
				float3 appendResult2043_g50723 = (float3(Motion_X216_g50723 , 0.0 , Motion_Z190_g50723));
				float3 Vertex_Motion_World1118_g50723 = ( ( temp_output_3474_0_g50723 + appendResult2047_g50723 ) + appendResult2043_g50723 );
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch3312_g50723 = Vertex_Motion_World1118_g50723;
				#else
				float3 staticSwitch3312_g50723 = ( Vertex_Motion_Object833_g50723 + ( 0.0 * _VertexDataMode ) );
				#endif
				half Global_Vertex_Size174_g50723 = break322_g51522.w;
				float lerpResult346_g50723 = lerp( 1.0 , Global_Vertex_Size174_g50723 , _GlobalSize);
				float3 appendResult3480_g50723 = (float3(lerpResult346_g50723 , lerpResult346_g50723 , lerpResult346_g50723));
				half3 ObjectData20_g51435 = appendResult3480_g50723;
				half3 _Vector11 = half3(1,1,1);
				half3 WorldData19_g51435 = _Vector11;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51435 = WorldData19_g51435;
				#else
				float3 staticSwitch14_g51435 = ObjectData20_g51435;
				#endif
				half3 Vertex_Size1741_g50723 = staticSwitch14_g51435;
				half3 _Vector5 = half3(1,1,1);
				float3 Vertex_SizeFade1740_g50723 = _Vector5;
				half3 Grass_Coverage2661_g50723 = half3(0,0,0);
				float3 Final_VertexPosition890_g50723 = ( ( staticSwitch3312_g50723 * Vertex_Size1741_g50723 * Vertex_SizeFade1740_g50723 ) + Mesh_PivotsOS2291_g50723 + Grass_Coverage2661_g50723 );
				
				float2 vertexToFrag11_g51423 = ( ( inputMesh.ase_texcoord.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				outputPackedVaryingsMeshToPS.ase_texcoord3.xy = vertexToFrag11_g51423;
				float2 appendResult21_g51510 = (float2(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord.w));
				float2 Mesh_DetailCoord3_g50723 = appendResult21_g51510;
				float2 vertexToFrag11_g51446 = ( ( Mesh_DetailCoord3_g50723 * (_SecondUVs).xy ) + (_SecondUVs).zw );
				outputPackedVaryingsMeshToPS.ase_texcoord3.zw = vertexToFrag11_g51446;
				half Mesh_DetailMask90_g50723 = inputMesh.ase_color.b;
				float vertexToFrag11_g51546 = ( ( Mesh_DetailMask90_g50723 - 0.5 ) + _DetailMeshValue );
				outputPackedVaryingsMeshToPS.ase_texcoord4.x = vertexToFrag11_g51546;
				
				float3 ase_worldTangent = TransformObjectToWorldDir(inputMesh.ase_tangent.xyz);
				outputPackedVaryingsMeshToPS.ase_texcoord4.yzw = ase_worldTangent;
				float3 ase_worldNormal = TransformObjectToWorldNormal(inputMesh.normalOS);
				outputPackedVaryingsMeshToPS.ase_texcoord5.xyz = ase_worldNormal;
				float ase_vertexTangentSign = inputMesh.ase_tangent.w * unity_WorldTransformParams.w;
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				outputPackedVaryingsMeshToPS.ase_texcoord6.xyz = ase_worldBitangent;
				float3 vertexToFrag3890_g50723 = ase_worldPos;
				outputPackedVaryingsMeshToPS.ase_texcoord7.xyz = vertexToFrag3890_g50723;
				
				float temp_output_7_0_g51545 = TVE_CameraFadeStart;
				float saferPower3976_g50723 = max( saturate( ( ( distance( ase_worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g51545 ) / ( TVE_CameraFadeEnd - temp_output_7_0_g51545 ) ) ) , 0.0001 );
				float temp_output_3976_0_g50723 = pow( saferPower3976_g50723 , _FadeCameraValue );
				float vertexToFrag11_g51542 = temp_output_3976_0_g50723;
				outputPackedVaryingsMeshToPS.ase_texcoord5.w = vertexToFrag11_g51542;
				
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord6.w = 0;
				outputPackedVaryingsMeshToPS.ase_texcoord7.w = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = Final_VertexPosition890_g50723;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif
				inputMesh.normalOS =  inputMesh.normalOS ;
				return inputMesh;
			}

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh)
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS = (PackedVaryingsMeshToPS)0;
				AttributesMesh defaultMesh = inputMesh;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				inputMesh = ApplyMeshModification( inputMesh, _TimeParameters.xyz, outputPackedVaryingsMeshToPS);

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				float3 normalWS = TransformObjectToWorldNormal(inputMesh.normalOS);

				float3 VMESHpositionRWS = positionRWS;
				float4 VMESHpositionCS = TransformWorldToHClip(positionRWS);

				float4 VPASSpreviousPositionCS;
				float4 VPASSpositionCS = mul(UNITY_MATRIX_UNJITTERED_VP, float4(VMESHpositionRWS, 1.0));

				bool forceNoMotion = unity_MotionVectorsParams.y == 0.0;
				if (forceNoMotion)
				{
					VPASSpreviousPositionCS = float4(0.0, 0.0, 0.0, 1.0);
				}
				else
				{
					bool hasDeformation = unity_MotionVectorsParams.x > 0.0;
					float3 effectivePositionOS = (hasDeformation ? inputMesh.previousPositionOS : defaultMesh.positionOS);
					#if defined(_ADD_PRECOMPUTED_VELOCITY)
					effectivePositionOS -= inputMesh.precomputedVelocity;
					#endif

					#if defined(HAVE_MESH_MODIFICATION)
						AttributesMesh previousMesh = defaultMesh;
						previousMesh.positionOS = effectivePositionOS ;
						PackedVaryingsMeshToPS test = (PackedVaryingsMeshToPS)0;
						float3 curTime = _TimeParameters.xyz;
						previousMesh = ApplyMeshModification(previousMesh, _LastTimeParameters.xyz, test);
						_TimeParameters.xyz = curTime;
						float3 previousPositionRWS = TransformPreviousObjectToWorld(previousMesh.positionOS);
					#else
						float3 previousPositionRWS = TransformPreviousObjectToWorld(effectivePositionOS);
					#endif

					#ifdef ATTRIBUTES_NEED_NORMAL
						float3 normalWS = TransformPreviousObjectToWorldNormal(defaultMesh.normalOS);
					#else
						float3 normalWS = float3(0.0, 0.0, 0.0);
					#endif

					#if defined(HAVE_VERTEX_MODIFICATION)
						//ApplyVertexModification(inputMesh, normalWS, previousPositionRWS, _LastTimeParameters.xyz);
					#endif

					VPASSpreviousPositionCS = mul(UNITY_MATRIX_PREV_VP, float4(previousPositionRWS, 1.0));
				}

				outputPackedVaryingsMeshToPS.vmeshPositionCS = VMESHpositionCS;
				outputPackedVaryingsMeshToPS.vmeshInterp00.xyz = VMESHpositionRWS;

				outputPackedVaryingsMeshToPS.vpassInterpolators0 = float3(VPASSpositionCS.xyw);
				outputPackedVaryingsMeshToPS.vpassInterpolators1 = float3(VPASSpreviousPositionCS.xyw);
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float3 previousPositionOS : TEXCOORD4;
				#if defined (_ADD_PRECOMPUTED_VELOCITY)
					float3 precomputedVelocity : TEXCOORD5;
				#endif
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_tangent : TANGENT;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.previousPositionOS = v.previousPositionOS;
				#if defined (_ADD_PRECOMPUTED_VELOCITY)
				o.precomputedVelocity = v.precomputedVelocity;
				#endif
				o.ase_texcoord = v.ase_texcoord;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				o.ase_tangent = v.ase_tangent;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.previousPositionOS = patch[0].previousPositionOS * bary.x + patch[1].previousPositionOS * bary.y + patch[2].previousPositionOS * bary.z;
				#if defined (_ADD_PRECOMPUTED_VELOCITY)
					o.precomputedVelocity = patch[0].precomputedVelocity * bary.x + patch[1].precomputedVelocity * bary.y + patch[2].precomputedVelocity * bary.z;
				#endif
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			void Frag( PackedVaryingsMeshToPS packedInput
				, out float4 outMotionVector : SV_Target0
				#ifdef WRITE_NORMAL_BUFFER
				, out float4 outNormalBuffer : SV_Target1
					#ifdef WRITE_MSAA_DEPTH
						, out float1 depthColor : SV_Target2
					#endif
				#elif defined(WRITE_MSAA_DEPTH)
				, out float4 outNormalBuffer : SV_Target1
				, out float1 depthColor : SV_Target2
				#endif

				#ifdef _DEPTHOFFSET_ON
					, out float outputDepth : SV_Depth
				#endif
				, FRONT_FACE_TYPE ase_vface : FRONT_FACE_SEMANTIC
				)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );
				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.vmeshPositionCS;
				input.positionRWS = packedInput.vmeshInterp00.xyz;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				SurfaceData surfaceData;
				BuiltinData builtinData;

				SmoothSurfaceDescription surfaceDescription = (SmoothSurfaceDescription)0;
				float2 vertexToFrag11_g51423 = packedInput.ase_texcoord3.xy;
				half2 Main_UVs15_g50723 = vertexToFrag11_g51423;
				float3 unpack4112_g50723 = UnpackNormalScale( SAMPLE_TEXTURE2D( _MainNormalTex, sampler_MainAlbedoTex, Main_UVs15_g50723 ), _MainNormalValue );
				unpack4112_g50723.z = lerp( 1, unpack4112_g50723.z, saturate(_MainNormalValue) );
				half3 Main_Normal137_g50723 = unpack4112_g50723;
				float2 vertexToFrag11_g51446 = packedInput.ase_texcoord3.zw;
				half2 Second_UVs17_g50723 = vertexToFrag11_g51446;
				float3 unpack4114_g50723 = UnpackNormalScale( SAMPLE_TEXTURE2D( _SecondNormalTex, sampler_SecondMaskTex, Second_UVs17_g50723 ), _SecondNormalValue );
				unpack4114_g50723.z = lerp( 1, unpack4114_g50723.z, saturate(_SecondNormalValue) );
				half3 Second_Normal179_g50723 = unpack4114_g50723;
				float vertexToFrag11_g51546 = packedInput.ase_texcoord4.x;
				float temp_output_3919_0_g50723 = vertexToFrag11_g51546;
				half Blend_Source1540_g50723 = temp_output_3919_0_g50723;
				float4 tex2DNode35_g50723 = SAMPLE_TEXTURE2D( _MainMaskTex, sampler_MainAlbedoTex, Main_UVs15_g50723 );
				half Main_Mask57_g50723 = tex2DNode35_g50723.b;
				float4 tex2DNode33_g50723 = SAMPLE_TEXTURE2D( _SecondMaskTex, sampler_SecondMaskTex, Second_UVs17_g50723 );
				half Second_Mask81_g50723 = tex2DNode33_g50723.b;
				float lerpResult1327_g50723 = lerp( Main_Mask57_g50723 , Second_Mask81_g50723 , _DetailMaskMode);
				float lerpResult4058_g50723 = lerp( lerpResult1327_g50723 , ( 1.0 - lerpResult1327_g50723 ) , _DetailMaskInvertMode);
				float temp_output_7_0_g51551 = _DetailBlendMinValue;
				half Mask_Detail147_g50723 = saturate( ( ( saturate( ( Blend_Source1540_g50723 + ( Blend_Source1540_g50723 * lerpResult4058_g50723 ) ) ) - temp_output_7_0_g51551 ) / ( _DetailBlendMaxValue - temp_output_7_0_g51551 ) ) );
				float3 lerpResult230_g50723 = lerp( float3( 0,0,1 ) , Second_Normal179_g50723 , Mask_Detail147_g50723);
				float3 lerpResult3372_g50723 = lerp( float3( 0,0,1 ) , Main_Normal137_g50723 , _DetailNormalValue);
				float3 lerpResult3376_g50723 = lerp( Main_Normal137_g50723 , BlendNormal( lerpResult3372_g50723 , Second_Normal179_g50723 ) , Mask_Detail147_g50723);
				#if defined(TVE_DETAIL_BLEND_OVERLAY)
				float3 staticSwitch4063_g50723 = BlendNormal( Main_Normal137_g50723 , lerpResult230_g50723 );
				#elif defined(TVE_DETAIL_BLEND_REPLACE)
				float3 staticSwitch4063_g50723 = lerpResult3376_g50723;
				#else
				float3 staticSwitch4063_g50723 = BlendNormal( Main_Normal137_g50723 , lerpResult230_g50723 );
				#endif
				#if defined(TVE_DETAIL_MODE_OFF)
				float3 staticSwitch267_g50723 = Main_Normal137_g50723;
				#elif defined(TVE_DETAIL_MODE_ON)
				float3 staticSwitch267_g50723 = staticSwitch4063_g50723;
				#else
				float3 staticSwitch267_g50723 = Main_Normal137_g50723;
				#endif
				float3 temp_output_13_0_g51558 = staticSwitch267_g50723;
				float3 switchResult12_g51558 = (((ase_vface>0)?(temp_output_13_0_g51558):(( temp_output_13_0_g51558 * _render_normals_options ))));
				half3 Blend_Normal312_g50723 = switchResult12_g51558;
				half3 Final_Normal366_g50723 = Blend_Normal312_g50723;
				
				half Main_Smoothness227_g50723 = ( tex2DNode35_g50723.a * _MainSmoothnessValue );
				half Second_Smoothness236_g50723 = ( tex2DNode33_g50723.a * _SecondSmoothnessValue );
				float lerpResult266_g50723 = lerp( Main_Smoothness227_g50723 , Second_Smoothness236_g50723 , Mask_Detail147_g50723);
				#if defined(TVE_DETAIL_BLEND_OVERLAY)
				float staticSwitch4065_g50723 = Main_Smoothness227_g50723;
				#elif defined(TVE_DETAIL_BLEND_REPLACE)
				float staticSwitch4065_g50723 = lerpResult266_g50723;
				#else
				float staticSwitch4065_g50723 = Main_Smoothness227_g50723;
				#endif
				#if defined(TVE_DETAIL_MODE_OFF)
				float staticSwitch297_g50723 = Main_Smoothness227_g50723;
				#elif defined(TVE_DETAIL_MODE_ON)
				float staticSwitch297_g50723 = staticSwitch4065_g50723;
				#else
				float staticSwitch297_g50723 = Main_Smoothness227_g50723;
				#endif
				half Blend_Smoothness314_g50723 = staticSwitch297_g50723;
				half Global_OverlaySmoothness311_g50723 = TVE_OverlaySmoothness;
				float3 ase_worldTangent = packedInput.ase_texcoord4.yzw;
				float3 ase_worldNormal = packedInput.ase_texcoord5.xyz;
				float3 ase_worldBitangent = packedInput.ase_texcoord6.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal4099_g50723 = Main_Normal137_g50723;
				float3 worldNormal4099_g50723 = float3(dot(tanToWorld0,tanNormal4099_g50723), dot(tanToWorld1,tanNormal4099_g50723), dot(tanToWorld2,tanNormal4099_g50723));
				float3 Main_Normal_WS4101_g50723 = worldNormal4099_g50723;
				float lerpResult3567_g50723 = lerp( _OverlayBottomValue , 1.0 , Main_Normal_WS4101_g50723.y);
				float4 tex2DNode29_g50723 = SAMPLE_TEXTURE2D( _MainAlbedoTex, sampler_MainAlbedoTex, Main_UVs15_g50723 );
				half Main_AlbedoTex_G3526_g50723 = tex2DNode29_g50723.g;
				half Second_AlbedoTex_G3581_g50723 = (SAMPLE_TEXTURE2D( _SecondAlbedoTex, sampler_SecondMaskTex, Second_UVs17_g50723 )).g;
				float lerpResult3579_g50723 = lerp( Main_AlbedoTex_G3526_g50723 , Second_AlbedoTex_G3581_g50723 , Mask_Detail147_g50723);
				#if defined(TVE_DETAIL_MODE_OFF)
				float staticSwitch3574_g50723 = Main_AlbedoTex_G3526_g50723;
				#elif defined(TVE_DETAIL_MODE_ON)
				float staticSwitch3574_g50723 = lerpResult3579_g50723;
				#else
				float staticSwitch3574_g50723 = Main_AlbedoTex_G3526_g50723;
				#endif
				float3 vertexToFrag3890_g50723 = packedInput.ase_texcoord7.xyz;
				float3 PositionWS_PerVertex3905_g50723 = vertexToFrag3890_g50723;
				float3 Position82_g51514 = PositionWS_PerVertex3905_g50723;
				float temp_output_84_0_g51514 = _LayerExtrasValue;
				float4 lerpResult88_g51514 = lerp( TVE_ExtrasParams , SAMPLE_TEXTURE2D_ARRAY( TVE_ExtrasTex, samplerTVE_ExtrasTex, ( (TVE_ExtrasCoord).zw + ( (TVE_ExtrasCoord).xy * (Position82_g51514).xz ) ),temp_output_84_0_g51514 ) , TVE_ExtrasUsage[(int)temp_output_84_0_g51514]);
				float4 break89_g51514 = lerpResult88_g51514;
				half Global_Extras_Overlay156_g50723 = break89_g51514.b;
				float temp_output_1025_0_g50723 = ( _GlobalOverlay * Global_Extras_Overlay156_g50723 );
				half Overlay_Commons1365_g50723 = temp_output_1025_0_g50723;
				float temp_output_7_0_g51561 = _OverlayMaskMinValue;
				half Overlay_Mask269_g50723 = saturate( ( ( ( ( ( lerpResult3567_g50723 * 0.5 ) + staticSwitch3574_g50723 ) * Overlay_Commons1365_g50723 ) - temp_output_7_0_g51561 ) / ( _OverlayMaskMaxValue - temp_output_7_0_g51561 ) ) );
				float lerpResult343_g50723 = lerp( Blend_Smoothness314_g50723 , Global_OverlaySmoothness311_g50723 , Overlay_Mask269_g50723);
				half Final_Smoothness371_g50723 = lerpResult343_g50723;
				half Global_Extras_Wetness305_g50723 = break89_g51514.g;
				float lerpResult3673_g50723 = lerp( 0.0 , Global_Extras_Wetness305_g50723 , _GlobalWetness);
				half Final_SmoothnessAndWetness4130_g50723 = saturate( ( Final_Smoothness371_g50723 + lerpResult3673_g50723 ) );
				
				float localCustomAlphaClip3735_g50723 = ( 0.0 );
				float vertexToFrag11_g51542 = packedInput.ase_texcoord5.w;
				half Fade_Camera3743_g50723 = vertexToFrag11_g51542;
				half Final_AlphaFade3727_g50723 = ( 1.0 * Fade_Camera3743_g50723 );
				float temp_output_41_0_g51554 = Final_AlphaFade3727_g50723;
				float Main_Alpha316_g50723 = ( _MainColor.a * tex2DNode29_g50723.a );
				half AlphaTreshold2132_g50723 = _Cutoff;
				#ifdef TVE_ALPHA_CLIP
				float staticSwitch3792_g50723 = ( Main_Alpha316_g50723 - ( AlphaTreshold2132_g50723 - 0.5 ) );
				#else
				float staticSwitch3792_g50723 = Main_Alpha316_g50723;
				#endif
				half Final_Alpha3754_g50723 = staticSwitch3792_g50723;
				float temp_output_661_0_g50723 = ( saturate( ( temp_output_41_0_g51554 + ( temp_output_41_0_g51554 * SAMPLE_TEXTURE3D( TVE_ScreenTex3D, samplerTVE_ScreenTex3D, ( TVE_ScreenTexCoord * PositionWS_PerVertex3905_g50723 ) ).r ) ) ) * Final_Alpha3754_g50723 );
				float Alpha3735_g50723 = temp_output_661_0_g50723;
				float Treshold3735_g50723 = 0.5;
				{
				#if TVE_ALPHA_CLIP
				clip(Alpha3735_g50723 - Treshold3735_g50723);
				#endif
				}
				half Final_Clip914_g50723 = saturate( Alpha3735_g50723 );
				
				surfaceDescription.Normal = Final_Normal366_g50723;
				surfaceDescription.Smoothness = Final_SmoothnessAndWetness4130_g50723;
				surfaceDescription.Alpha = Final_Clip914_g50723;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				GetSurfaceAndBuiltinData( surfaceDescription, input, V, posInput, surfaceData, builtinData );

				float4 VPASSpositionCS = float4(packedInput.vpassInterpolators0.xy, 0.0, packedInput.vpassInterpolators0.z);
				float4 VPASSpreviousPositionCS = float4(packedInput.vpassInterpolators1.xy, 0.0, packedInput.vpassInterpolators1.z);

				#ifdef _DEPTHOFFSET_ON
				VPASSpositionCS.w += builtinData.depthOffset;
				VPASSpreviousPositionCS.w += builtinData.depthOffset;
				#endif

				float2 motionVector = CalculateMotionVector( VPASSpositionCS, VPASSpreviousPositionCS );
				EncodeMotionVector( motionVector * 0.5, outMotionVector );

				bool forceNoMotion = unity_MotionVectorsParams.y == 0.0;
				if( forceNoMotion )
					outMotionVector = float4( 2.0, 0.0, 0.0, 0.0 );

				#ifdef WRITE_NORMAL_BUFFER
				EncodeIntoNormalBuffer( ConvertSurfaceDataToNormalData( surfaceData ), posInput.positionSS, outNormalBuffer );

				#ifdef WRITE_MSAA_DEPTH
				depthColor = packedInput.vmeshPositionCS.z;
				#endif
				#elif defined(WRITE_MSAA_DEPTH)
				outNormalBuffer = float4( 0.0, 0.0, 0.0, 1.0 );
				depthColor = packedInput.vmeshPositionCS.z;
				#endif

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "Forward"
			Tags { "LightMode"="Forward" }

			Blend [_SrcBlend] [_DstBlend], [_AlphaSrcBlend] [_AlphaDstBlend]
			Cull [_CullModeForward]
			ZTest [_ZTestDepthEqualForOpaque]
			ZWrite [_ZWrite]

			Stencil
			{
				Ref [_StencilRef]
				WriteMask [_StencilWriteMask]
				Comp Always
				Pass Replace
				Fail Keep
				ZFail Keep
			}


			ColorMask [_ColorMaskTransparentVel] 1

			HLSLPROGRAM

			#define ASE_NEED_CULLFACE 1
			#define _MATERIAL_FEATURE_SPECULAR_COLOR 1
			#define _ENERGY_CONSERVING_SPECULAR 1
			#pragma multi_compile _ DOTS_INSTANCING_ON
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define _AMBIENT_OCCLUSION 1
			#define HAVE_MESH_MODIFICATION
			#define ASE_SRP_VERSION 100202
			#if !defined(ASE_NEED_CULLFACE)
			#define ASE_NEED_CULLFACE 1
			#endif //ASE_NEED_CULLFACE
			#define ASE_USING_SAMPLING_MACROS 1


			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT
			#pragma shader_feature_local _DOUBLESIDED_ON
			#pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
			#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT
			#pragma shader_feature_local _ALPHATEST_ON

			#if !defined(DEBUG_DISPLAY) && defined(_ALPHATEST_ON)
			#define SHADERPASS_FORWARD_BYPASS_ALPHA_TEST
			#endif

			#define SHADERPASS SHADERPASS_FORWARD
			#pragma multi_compile _ DEBUG_DISPLAY
			#pragma multi_compile _ LIGHTMAP_ON
			#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			#pragma multi_compile _ DYNAMICLIGHTMAP_ON
			#pragma multi_compile _ SHADOWS_SHADOWMASK
			#pragma multi_compile DECALS_OFF DECALS_3RT DECALS_4RT
			#pragma multi_compile USE_FPTL_LIGHTLIST USE_CLUSTERED_LIGHTLIST
			#pragma multi_compile SHADOW_LOW SHADOW_MEDIUM SHADOW_HIGH

			#pragma vertex Vert
			#pragma fragment Frag

			//#define UNITY_MATERIAL_LIT

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#ifdef DEBUG_DISPLAY
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
			#endif

			// CBuffer must be declared before Material.hlsl since it internaly uses _BlendMode now
			CBUFFER_START( UnityPerMaterial )
			half4 _DetailBlendRemap;
			half4 _OverlayMaskRemap;
			float4 _NoiseMaskRemap;
			half4 _SubsurfaceMaskRemap;
			half4 _VertexOcclusionRemap;
			float4 _MaxBoundsInfo;
			float4 _SubsurfaceDiffusion_asset;
			half4 _MainColor;
			half4 _MainUVs;
			half4 _SecondColor;
			float4 _GradientMaskRemap;
			float4 _SubsurfaceDiffusion_Asset;
			float4 _Color;
			half4 _VertexOcclusionColor;
			half4 _SecondUVs;
			half4 _ColorsMaskRemap;
			float4 _EmissiveIntensityParams;
			half4 _EmissiveColor;
			half4 _EmissiveUVs;
			half3 _render_normals_options;
			half _MotionVariation_10;
			float _MotionSpeed_10;
			half _MotionAmplitude_10;
			half _MotionScale_20;
			half _MotionVariation_20;
			half _MotionSpeed_20;
			half _VertexRollingMode;
			half _LayerMotionValue;
			half _vertex_pivot_mode;
			half _MotionAmplitude_20;
			half _render_src;
			half _IsStandardShader;
			half _MainSmoothnessValue;
			half _SecondSmoothnessValue;
			half _GlobalWetness;
			half _MainOcclusionValue;
			float _MotionScale_10;
			half _InteractionAmplitude;
			half _EmissiveExposureValue;
			half _VertexOcclusionMinValue;
			half _OverlayMaskMaxValue;
			half _OverlayMaskMinValue;
			half _SecondNormalValue;
			half _LayerExtrasValue;
			half _GlobalOverlay;
			half _DetailNormalValue;
			half _MainNormalValue;
			half _OverlayBottomValue;
			half _DetailBlendMaxValue;
			half _DetailBlendMinValue;
			half _DetailMaskInvertMode;
			half _DetailMaskMode;
			half _DetailMeshValue;
			half _RenderSpecular;
			half _GlobalSize;
			half _VertexDataMode;
			half _InteractionVariation;
			half _LayerReactValue;
			half _VertexOcclusionMaxValue;
			half _render_zw;
			half _IsVersion;
			half _RenderNormals;
			half _VariationMotionMessage;
			half _RenderClip;
			half _Cutoff;
			half _MotionSpace;
			half _GradientCat;
			half _VertexVariationMode;
			half _RenderDecals;
			half _TranslucencyDirectValue;
			half _NoiseCat;
			half _SubsurfaceCat;
			half _LayersSpace;
			half _RenderZWrite;
			half _DetailMode;
			half _EmissiveCat;
			half _RenderMode;
			half _RenderSSR;
			half _SizeFadeCat;
			half _render_dst;
			half _render_cull;
			half _IsBarkShader;
			half _TranslucencyIntensityValue;
			half _TranslucencyNormalValue;
			half _FadeSpace;
			half _DetailSpace;
			half _TranslucencyShadowValue;
			half _EmissiveFlagMode;
			half _TranslucencyHDMessage;
			half _OcclusionCat;
			half _RenderPriority;
			half _TranslucencyAmbientValue;
			half _DetailCat;
			half _VertexMasksMode;
			half _SizeFadeMessage;
			half _MainCat;
			half _SecondOcclusionValue;
			half _ReceiveSpace;
			half _PerspectiveCat;
			half _VariationGlobalsMessage;
			float _SubsurfaceDiffusion;
			half _RenderingCat;
			half _DetailBlendMode;
			half _TranslucencyScatteringValue;
			half _IsTVEShader;
			half _GlobalCat;
			half _RenderCull;
			half _DetailTypeMode;
			half _MotionCat;
			half _FadeCameraValue;
			float4 _EmissionColor;
			float _AlphaCutoff;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			TEXTURE2D(_MainTex);
			SAMPLER(sampler_MainTex);
			TEXTURE2D(_BumpMap);
			SAMPLER(sampler_BumpMap);
			half4 TVE_MotionParams;
			TEXTURE2D_ARRAY(TVE_MotionTex);
			half4 TVE_MotionCoord;
			SAMPLER(samplerTVE_MotionTex);
			float TVE_MotionUsage[9];
			TEXTURE2D(TVE_NoiseTex);
			float2 TVE_NoiseSpeed_Vegetation;
			float2 TVE_NoiseSpeed_Grass;
			half TVE_NoiseSize_Vegetation;
			half TVE_NoiseSize_Grass;
			SAMPLER(samplerTVE_NoiseTex);
			half4 TVE_ReactParams;
			TEXTURE2D_ARRAY(TVE_ReactTex);
			half4 TVE_ReactCoord;
			SAMPLER(samplerTVE_ReactTex);
			float TVE_ReactUsage[9];
			TEXTURE2D(_MainAlbedoTex);
			SAMPLER(sampler_MainAlbedoTex);
			TEXTURE2D(_SecondAlbedoTex);
			TEXTURE2D(_SecondMaskTex);
			SAMPLER(sampler_SecondMaskTex);
			TEXTURE2D(_MainMaskTex);
			half4 TVE_OverlayColor;
			TEXTURE2D(_MainNormalTex);
			half4 TVE_ExtrasParams;
			TEXTURE2D_ARRAY(TVE_ExtrasTex);
			half4 TVE_ExtrasCoord;
			SAMPLER(samplerTVE_ExtrasTex);
			float TVE_ExtrasUsage[9];
			TEXTURE2D(_SecondNormalTex);
			TEXTURE2D(_EmissiveTex);
			SAMPLER(sampler_EmissiveTex);
			half TVE_EmissiveValue;
			half TVE_OverlaySmoothness;
			half TVE_CameraFadeStart;
			half TVE_CameraFadeEnd;
			TEXTURE3D(TVE_ScreenTex3D);
			half TVE_ScreenTexCoord;
			SAMPLER(samplerTVE_ScreenTex3D);


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/Lighting.hlsl"
			#define HAS_LIGHTLOOP
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoopDef.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoop.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_FRAG_VFACE
			#pragma shader_feature_local TVE_ALPHA_CLIP
			#pragma shader_feature_local TVE_VERTEX_DATA_BATCHED
			#pragma shader_feature_local TVE_DETAIL_MODE_OFF TVE_DETAIL_MODE_ON
			#pragma shader_feature_local TVE_DETAIL_BLEND_OVERLAY TVE_DETAIL_BLEND_REPLACE
			//TVE Injection Defines
			//SHADER INJECTION POINT BEGIN
			//SHADER INJECTION POINT END
			//TVE Pipeline Defines
			#define THE_VEGETATION_ENGINE
			#define IS_HD_PIPELINE
			//TVE HD Pipeline Defines
			#pragma shader_feature_local _DISABLE_DECALS
			#pragma shader_feature_local _DISABLE_SSR
			//TVE Shader Type Defines
			#define TVE_IS_VEGETATION_SHADER


			#if defined(_DOUBLESIDED_ON) && !defined(ASE_NEED_CULLFACE)
				#define ASE_NEED_CULLFACE 1
			#endif

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					float3 previousPositionOS : TEXCOORD4;
					#if defined (_ADD_PRECOMPUTED_VELOCITY)
						float3 precomputedVelocity : TEXCOORD5;
					#endif
				#endif
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 interp00 : TEXCOORD0;
				float3 interp01 : TEXCOORD1;
				float4 interp02 : TEXCOORD2;
				float4 interp03 : TEXCOORD3;
				float4 interp04 : TEXCOORD4;
				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					float3 vpassPositionCS : TEXCOORD5;
					float3 vpassPreviousPositionCS : TEXCOORD6;
				#endif
				float4 ase_texcoord7 : TEXCOORD7;
				float4 ase_texcoord8 : TEXCOORD8;
				float4 ase_texcoord9 : TEXCOORD9;
				float4 ase_color : COLOR;
				float4 ase_texcoord10 : TEXCOORD10;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				#if defined(SHADER_STAGE_FRAGMENT) && defined(ASE_NEED_CULLFACE)
				FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
				#endif
			};

			float3 ObjectPosition_UNITY_MATRIX_M(  )
			{
				return float3(UNITY_MATRIX_M[0].w, UNITY_MATRIX_M[1].w, UNITY_MATRIX_M[2].w );
			}
			
			float3 ASEGetEmissionHDRColor(float3 ldrColor, float luminanceIntensity, float exposureWeight, float inverseCurrentExposureMultiplier)
			{
				float3 hdrColor = ldrColor * luminanceIntensity;
				hdrColor = lerp( hdrColor* inverseCurrentExposureMultiplier, hdrColor, exposureWeight);
				return hdrColor;
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout GlobalSurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.specularOcclusion = 1.0;

				// surface data
				surfaceData.baseColor =					surfaceDescription.Albedo;
				surfaceData.perceptualSmoothness =		surfaceDescription.Smoothness;
				surfaceData.ambientOcclusion =			surfaceDescription.Occlusion;
				surfaceData.metallic =					surfaceDescription.Metallic;
				surfaceData.coatMask =					surfaceDescription.CoatMask;

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceData.specularOcclusion =			surfaceDescription.SpecularOcclusion;
				#endif
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.subsurfaceMask =			surfaceDescription.SubsurfaceMask;
				#endif
				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceData.thickness =					surfaceDescription.Thickness;
				#endif
				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceData.diffusionProfileHash =		asuint(surfaceDescription.DiffusionProfile);
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.specularColor =				surfaceDescription.Specular;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.anisotropy =				surfaceDescription.Anisotropy;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.iridescenceMask =			surfaceDescription.IridescenceMask;
				surfaceData.iridescenceThickness =		surfaceDescription.IridescenceThickness;
				#endif

				// refraction
				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.ior = surfaceDescription.RefractionIndex;
					surfaceData.transmittanceColor = surfaceDescription.RefractionColor;
					surfaceData.atDistance = surfaceDescription.RefractionDistance;

					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif


				// material features
				surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
				#endif
				#ifdef _MATERIAL_FEATURE_TRANSMISSION
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
				#endif
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
				#endif
				#ifdef ASE_LIT_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif
				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				// others
				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				// normals
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				normalTS = surfaceDescription.Normal;
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );

				// decals
				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, fragInputs.tangentToWorld[2], surfaceDescription.Alpha);
					ApplyDecalToSurfaceData(decalSurfaceData, fragInputs.tangentToWorld[2], surfaceData);
				}
				#endif

				bentNormalWS = surfaceData.normalWS;
				
				#ifdef ASE_BENT_NORMAL
				GetNormalWS( fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants );
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.tangentWS = TransformTangentToWorld( surfaceDescription.Tangent, fragInputs.tangentToWorld );
				#endif
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );


				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#endif

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceData.perceptualSmoothness = GeometricNormalFiltering( surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[ 2 ], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold );
				#endif

				// debug
				#if defined(DEBUG_DISPLAY)
				if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
				{
					surfaceData.metallic = 0;
				}
				ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
				#endif
			}

			void GetSurfaceAndBuiltinData(GlobalSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				LODDitheringTransition(ComputeFadeMaskSeed(V, posInput.positionSS), unity_LODFade.x);
				#endif

				#ifdef _DOUBLESIDED_ON
				float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
				#else
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				#endif

				ApplyDoubleSidedFlipOrMirror( fragInputs, doubleSidedConstants );

				#ifdef _ALPHATEST_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS );

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				#ifdef _ASE_BAKEDGI
				builtinData.bakeDiffuseLighting = surfaceDescription.BakedGI;
				#endif
				#ifdef _ASE_BAKEDBACKGI
				builtinData.backBakeDiffuseLighting = surfaceDescription.BakedBackGI;
				#endif

				builtinData.emissiveColor = surfaceDescription.Emission;

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			AttributesMesh ApplyMeshModification(AttributesMesh inputMesh, float3 timeParameters, inout PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS )
			{
				_TimeParameters.xyz = timeParameters;
				float3 PositionOS3588_g50723 = inputMesh.positionOS;
				half3 _Vector1 = half3(0,0,0);
				half3 Mesh_PivotsOS2291_g50723 = _Vector1;
				float3 temp_output_2283_0_g50723 = ( PositionOS3588_g50723 - Mesh_PivotsOS2291_g50723 );
				half3 VertexPos40_g51512 = temp_output_2283_0_g50723;
				float3 appendResult74_g51512 = (float3(0.0 , VertexPos40_g51512.y , 0.0));
				float3 VertexPosRotationAxis50_g51512 = appendResult74_g51512;
				float3 break84_g51512 = VertexPos40_g51512;
				float3 appendResult81_g51512 = (float3(break84_g51512.x , 0.0 , break84_g51512.z));
				float3 VertexPosOtherAxis82_g51512 = appendResult81_g51512;
				float ObjectData20_g51480 = 3.14;
				float Bounds_Radius121_g50723 = _MaxBoundsInfo.x;
				float WorldData19_g51480 = Bounds_Radius121_g50723;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g51480 = WorldData19_g51480;
				#else
				float staticSwitch14_g51480 = ObjectData20_g51480;
				#endif
				float Motion_Max_Rolling1137_g50723 = staticSwitch14_g51480;
				float3 localObjectPosition_UNITY_MATRIX_M14_g51483 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g51484 = localObjectPosition_UNITY_MATRIX_M14_g51483;
				float3 appendResult93_g51483 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				float3 temp_output_91_0_g51483 = ( appendResult93_g51483 * _vertex_pivot_mode );
				float3 PivotsOnly105_g51483 = (mul( GetObjectToWorldMatrix(), float4( temp_output_91_0_g51483 , 0.0 ) ).xyz).xyz;
				half3 On20_g51484 = ( localObjectPosition_UNITY_MATRIX_M14_g51483 + PivotsOnly105_g51483 );
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g51484 = On20_g51484;
				#else
				float3 staticSwitch14_g51484 = Off19_g51484;
				#endif
				half3 ObjectData20_g51485 = staticSwitch14_g51484;
				half3 WorldData19_g51485 = Off19_g51484;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51485 = WorldData19_g51485;
				#else
				float3 staticSwitch14_g51485 = ObjectData20_g51485;
				#endif
				float3 temp_output_66_0_g51483 = staticSwitch14_g51485;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g51483 = ( temp_output_66_0_g51483 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g51483 = temp_output_66_0_g51483;
				#endif
				half3 ObjectData20_g51482 = staticSwitch13_g51483;
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.positionOS).xyz ) );
				half3 WorldData19_g51482 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51482 = WorldData19_g51482;
				#else
				float3 staticSwitch14_g51482 = ObjectData20_g51482;
				#endif
				float3 Position83_g51481 = staticSwitch14_g51482;
				float temp_output_84_0_g51481 = _LayerMotionValue;
				float4 lerpResult87_g51481 = lerp( TVE_MotionParams , SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_MotionTex, samplerTVE_MotionTex, ( (TVE_MotionCoord).zw + ( (TVE_MotionCoord).xy * (Position83_g51481).xz ) ),temp_output_84_0_g51481, 0.0 ) , TVE_MotionUsage[(int)temp_output_84_0_g51481]);
				half4 Global_Motion_Params3909_g50723 = lerpResult87_g51481;
				float4 break322_g51421 = Global_Motion_Params3909_g50723;
				half Wind_Power369_g51421 = break322_g51421.z;
				float lerpResult410_g51421 = lerp( 0.2 , 1.0 , Wind_Power369_g51421);
				half Wind_Power_203109_g50723 = lerpResult410_g51421;
				half Mesh_Motion_260_g50723 = inputMesh.ase_texcoord3.y;
				#ifdef TVE_IS_GRASS_SHADER
				float2 staticSwitch160_g51439 = TVE_NoiseSpeed_Grass;
				#else
				float2 staticSwitch160_g51439 = TVE_NoiseSpeed_Vegetation;
				#endif
				float3 localObjectPosition_UNITY_MATRIX_M14_g51441 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g51442 = localObjectPosition_UNITY_MATRIX_M14_g51441;
				float3 appendResult93_g51441 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				float3 temp_output_91_0_g51441 = ( appendResult93_g51441 * _vertex_pivot_mode );
				float3 PivotsOnly105_g51441 = (mul( GetObjectToWorldMatrix(), float4( temp_output_91_0_g51441 , 0.0 ) ).xyz).xyz;
				half3 On20_g51442 = ( localObjectPosition_UNITY_MATRIX_M14_g51441 + PivotsOnly105_g51441 );
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g51442 = On20_g51442;
				#else
				float3 staticSwitch14_g51442 = Off19_g51442;
				#endif
				half3 ObjectData20_g51443 = staticSwitch14_g51442;
				half3 WorldData19_g51443 = Off19_g51442;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51443 = WorldData19_g51443;
				#else
				float3 staticSwitch14_g51443 = ObjectData20_g51443;
				#endif
				float3 temp_output_66_0_g51441 = staticSwitch14_g51443;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g51441 = ( temp_output_66_0_g51441 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g51441 = temp_output_66_0_g51441;
				#endif
				half3 ObjectData20_g51440 = staticSwitch13_g51441;
				half3 WorldData19_g51440 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51440 = WorldData19_g51440;
				#else
				float3 staticSwitch14_g51440 = ObjectData20_g51440;
				#endif
				#ifdef TVE_IS_GRASS_SHADER
				float2 staticSwitch164_g51439 = (ase_worldPos).xz;
				#else
				float2 staticSwitch164_g51439 = (staticSwitch14_g51440).xz;
				#endif
				#ifdef TVE_IS_GRASS_SHADER
				float staticSwitch161_g51439 = TVE_NoiseSize_Grass;
				#else
				float staticSwitch161_g51439 = TVE_NoiseSize_Vegetation;
				#endif
				float2 panner73_g51439 = ( _TimeParameters.x * staticSwitch160_g51439 + ( staticSwitch164_g51439 * staticSwitch161_g51439 ));
				float4 tex2DNode75_g51439 = SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, samplerTVE_NoiseTex, panner73_g51439, 0.0 );
				float4 saferPower77_g51439 = max( abs( tex2DNode75_g51439 ) , 0.0001 );
				half Wind_Power2223_g50723 = Wind_Power369_g51421;
				float temp_output_167_0_g51439 = Wind_Power2223_g50723;
				float lerpResult168_g51439 = lerp( 1.5 , 0.25 , temp_output_167_0_g51439);
				float4 temp_cast_7 = (lerpResult168_g51439).xxxx;
				float4 break142_g51439 = pow( saferPower77_g51439 , temp_cast_7 );
				half Global_NoiseTex_R34_g50723 = break142_g51439.r;
				half Input_Speed62_g51479 = _MotionSpeed_20;
				float mulTime354_g51479 = _TimeParameters.x * Input_Speed62_g51479;
				float3 localObjectPosition_UNITY_MATRIX_M14_g51497 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g51498 = localObjectPosition_UNITY_MATRIX_M14_g51497;
				float3 appendResult93_g51497 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				float3 temp_output_91_0_g51497 = ( appendResult93_g51497 * _vertex_pivot_mode );
				float3 PivotsOnly105_g51497 = (mul( GetObjectToWorldMatrix(), float4( temp_output_91_0_g51497 , 0.0 ) ).xyz).xyz;
				half3 On20_g51498 = ( localObjectPosition_UNITY_MATRIX_M14_g51497 + PivotsOnly105_g51497 );
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g51498 = On20_g51498;
				#else
				float3 staticSwitch14_g51498 = Off19_g51498;
				#endif
				half3 ObjectData20_g51499 = staticSwitch14_g51498;
				half3 WorldData19_g51499 = Off19_g51498;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51499 = WorldData19_g51499;
				#else
				float3 staticSwitch14_g51499 = ObjectData20_g51499;
				#endif
				float3 temp_output_66_0_g51497 = staticSwitch14_g51499;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g51497 = ( temp_output_66_0_g51497 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g51497 = temp_output_66_0_g51497;
				#endif
				float3 break9_g51497 = staticSwitch13_g51497;
				half Variation_Complex102_g51495 = frac( ( inputMesh.ase_color.r + ( break9_g51497.x + break9_g51497.z ) ) );
				float ObjectData20_g51496 = Variation_Complex102_g51495;
				half Variation_Simple105_g51495 = inputMesh.ase_color.r;
				float WorldData19_g51496 = Variation_Simple105_g51495;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g51496 = WorldData19_g51496;
				#else
				float staticSwitch14_g51496 = ObjectData20_g51496;
				#endif
				half Motion_Variation3073_g50723 = staticSwitch14_g51496;
				float temp_output_3154_0_g50723 = ( _MotionVariation_20 * Motion_Variation3073_g50723 );
				float Motion_Variation284_g51479 = temp_output_3154_0_g50723;
				float Motion_Scale287_g51479 = ( _MotionScale_20 * ase_worldPos.x );
				half Variation127_g51521 = temp_output_3154_0_g50723;
				float lerpResult110_g51521 = lerp( ceil( saturate( ( frac( ( Variation127_g51521 + 0.3576 ) ) - 0.6 ) ) ) , ceil( saturate( ( frac( ( Variation127_g51521 + 0.1715 ) ) - 0.4 ) ) ) , (sin( _TimeParameters.x )*0.5 + 0.5));
				float temp_output_112_0_g51521 = Wind_Power2223_g50723;
				float lerpResult111_g51521 = lerp( lerpResult110_g51521 , 1.0 , ( temp_output_112_0_g51521 * temp_output_112_0_g51521 * temp_output_112_0_g51521 * temp_output_112_0_g51521 ));
				float lerpResult126_g51521 = lerp( lerpResult111_g51521 , 1.0 , ( 1.0 - saturate( Variation127_g51521 ) ));
				half Motion_Rolling138_g50723 = ( ( _MotionAmplitude_20 * Motion_Max_Rolling1137_g50723 ) * ( Wind_Power_203109_g50723 * Mesh_Motion_260_g50723 * Global_NoiseTex_R34_g50723 * _VertexRollingMode ) * sin( ( mulTime354_g51479 + Motion_Variation284_g51479 + Motion_Scale287_g51479 ) ) * lerpResult126_g51521 );
				half Angle44_g51512 = Motion_Rolling138_g50723;
				half3 VertexPos40_g51437 = ( VertexPosRotationAxis50_g51512 + ( VertexPosOtherAxis82_g51512 * cos( Angle44_g51512 ) ) + ( cross( float3(0,1,0) , VertexPosOtherAxis82_g51512 ) * sin( Angle44_g51512 ) ) );
				float3 appendResult74_g51437 = (float3(VertexPos40_g51437.x , 0.0 , 0.0));
				half3 VertexPosRotationAxis50_g51437 = appendResult74_g51437;
				float3 break84_g51437 = VertexPos40_g51437;
				float3 appendResult81_g51437 = (float3(0.0 , break84_g51437.y , break84_g51437.z));
				half3 VertexPosOtherAxis82_g51437 = appendResult81_g51437;
				float ObjectData20_g51438 = 3.14;
				float Bounds_Height374_g50723 = _MaxBoundsInfo.y;
				float WorldData19_g51438 = ( Bounds_Height374_g50723 * 3.14 );
				#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g51438 = WorldData19_g51438;
				#else
				float staticSwitch14_g51438 = ObjectData20_g51438;
				#endif
				float Motion_Max_Bending1133_g50723 = staticSwitch14_g51438;
				float lerpResult376_g51421 = lerp( 0.1 , 1.0 , Wind_Power369_g51421);
				half Wind_Power_103106_g50723 = lerpResult376_g51421;
				float3 appendResult397_g51421 = (float3(break322_g51421.x , 0.0 , break322_g51421.y));
				float3 temp_output_398_0_g51421 = (appendResult397_g51421*2.0 + -1.0);
				float3 ase_parentObjectScale = ( 1.0 / float3( length( GetWorldToObjectMatrix()[ 0 ].xyz ), length( GetWorldToObjectMatrix()[ 1 ].xyz ), length( GetWorldToObjectMatrix()[ 2 ].xyz ) ) );
				float3 temp_output_339_0_g51421 = ( mul( GetWorldToObjectMatrix(), float4( temp_output_398_0_g51421 , 0.0 ) ).xyz * ase_parentObjectScale );
				half2 Wind_DirectionOS39_g50723 = (temp_output_339_0_g51421).xz;
				half Input_Speed62_g51477 = _MotionSpeed_10;
				float mulTime373_g51477 = _TimeParameters.x * Input_Speed62_g51477;
				half Motion_Variation284_g51477 = ( _MotionVariation_10 * Motion_Variation3073_g50723 );
				float2 appendResult344_g51477 = (float2(ase_worldPos.x , ase_worldPos.z));
				float2 Motion_Scale287_g51477 = ( _MotionScale_10 * appendResult344_g51477 );
				half2 Sine_MinusOneToOne281_g51477 = sin( ( mulTime373_g51477 + Motion_Variation284_g51477 + Motion_Scale287_g51477 ) );
				float2 temp_cast_12 = (1.0).xx;
				half Input_Turbulence327_g51477 = Global_NoiseTex_R34_g50723;
				float2 lerpResult321_g51477 = lerp( Sine_MinusOneToOne281_g51477 , temp_cast_12 , Input_Turbulence327_g51477);
				half2 Motion_Bending2258_g50723 = ( ( _MotionAmplitude_10 * Motion_Max_Bending1133_g50723 ) * Wind_Power_103106_g50723 * Wind_DirectionOS39_g50723 * Global_NoiseTex_R34_g50723 * lerpResult321_g51477 );
				half Interaction_Amplitude4137_g50723 = _InteractionAmplitude;
				float3 localObjectPosition_UNITY_MATRIX_M14_g51526 = ObjectPosition_UNITY_MATRIX_M();
				half3 Off19_g51527 = localObjectPosition_UNITY_MATRIX_M14_g51526;
				float3 appendResult93_g51526 = (float3(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord3.w , inputMesh.ase_texcoord.w));
				float3 temp_output_91_0_g51526 = ( appendResult93_g51526 * _vertex_pivot_mode );
				float3 PivotsOnly105_g51526 = (mul( GetObjectToWorldMatrix(), float4( temp_output_91_0_g51526 , 0.0 ) ).xyz).xyz;
				half3 On20_g51527 = ( localObjectPosition_UNITY_MATRIX_M14_g51526 + PivotsOnly105_g51526 );
				#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g51527 = On20_g51527;
				#else
				float3 staticSwitch14_g51527 = Off19_g51527;
				#endif
				half3 ObjectData20_g51528 = staticSwitch14_g51527;
				half3 WorldData19_g51528 = Off19_g51527;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51528 = WorldData19_g51528;
				#else
				float3 staticSwitch14_g51528 = ObjectData20_g51528;
				#endif
				float3 temp_output_66_0_g51526 = staticSwitch14_g51528;
				#ifdef SHADEROPTIONS_CAMERA_RELATIVE_RENDERING
				float3 staticSwitch13_g51526 = ( temp_output_66_0_g51526 + _WorldSpaceCameraPos );
				#else
				float3 staticSwitch13_g51526 = temp_output_66_0_g51526;
				#endif
				half3 ObjectData20_g51525 = staticSwitch13_g51526;
				half3 WorldData19_g51525 = ase_worldPos;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51525 = WorldData19_g51525;
				#else
				float3 staticSwitch14_g51525 = ObjectData20_g51525;
				#endif
				float3 Position83_g51524 = staticSwitch14_g51525;
				float temp_output_84_0_g51524 = _LayerReactValue;
				float4 lerpResult87_g51524 = lerp( TVE_ReactParams , SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ReactTex, samplerTVE_ReactTex, ( (TVE_ReactCoord).zw + ( (TVE_ReactCoord).xy * (Position83_g51524).xz ) ),temp_output_84_0_g51524, 0.0 ) , TVE_ReactUsage[(int)temp_output_84_0_g51524]);
				half4 Global_React_Params4173_g50723 = lerpResult87_g51524;
				float4 break322_g51522 = Global_React_Params4173_g50723;
				half Interaction_Mask66_g50723 = break322_g51522.z;
				float3 appendResult397_g51522 = (float3(break322_g51522.x , 0.0 , break322_g51522.y));
				float3 temp_output_398_0_g51522 = (appendResult397_g51522*2.0 + -1.0);
				float3 temp_output_339_0_g51522 = ( mul( GetWorldToObjectMatrix(), float4( temp_output_398_0_g51522 , 0.0 ) ).xyz * ase_parentObjectScale );
				half2 Interaction_DirectionOS4158_g50723 = (temp_output_339_0_g51522).xz;
				float lerpResult3307_g50723 = lerp( 1.0 , Motion_Variation3073_g50723 , _InteractionVariation);
				half2 Motion_Interaction53_g50723 = ( Interaction_Amplitude4137_g50723 * Motion_Max_Bending1133_g50723 * Interaction_Mask66_g50723 * Interaction_Mask66_g50723 * Interaction_DirectionOS4158_g50723 * lerpResult3307_g50723 );
				float2 lerpResult109_g50723 = lerp( Motion_Bending2258_g50723 , Motion_Interaction53_g50723 , ( Interaction_Mask66_g50723 * saturate( Interaction_Amplitude4137_g50723 ) ));
				half Mesh_Motion_182_g50723 = inputMesh.ase_texcoord3.x;
				float2 break143_g50723 = ( lerpResult109_g50723 * Mesh_Motion_182_g50723 );
				half Motion_Z190_g50723 = break143_g50723.y;
				half Angle44_g51437 = Motion_Z190_g50723;
				half3 VertexPos40_g51436 = ( VertexPosRotationAxis50_g51437 + ( VertexPosOtherAxis82_g51437 * cos( Angle44_g51437 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g51437 ) * sin( Angle44_g51437 ) ) );
				float3 appendResult74_g51436 = (float3(0.0 , 0.0 , VertexPos40_g51436.z));
				half3 VertexPosRotationAxis50_g51436 = appendResult74_g51436;
				float3 break84_g51436 = VertexPos40_g51436;
				float3 appendResult81_g51436 = (float3(break84_g51436.x , break84_g51436.y , 0.0));
				half3 VertexPosOtherAxis82_g51436 = appendResult81_g51436;
				half Motion_X216_g50723 = break143_g50723.x;
				half Angle44_g51436 = -Motion_X216_g50723;
				float3 Vertex_Motion_Object833_g50723 = ( VertexPosRotationAxis50_g51436 + ( VertexPosOtherAxis82_g51436 * cos( Angle44_g51436 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g51436 ) * sin( Angle44_g51436 ) ) );
				float3 temp_output_3474_0_g50723 = ( PositionOS3588_g50723 - Mesh_PivotsOS2291_g50723 );
				float3 appendResult2047_g50723 = (float3(Motion_Rolling138_g50723 , 0.0 , -Motion_Rolling138_g50723));
				float3 appendResult2043_g50723 = (float3(Motion_X216_g50723 , 0.0 , Motion_Z190_g50723));
				float3 Vertex_Motion_World1118_g50723 = ( ( temp_output_3474_0_g50723 + appendResult2047_g50723 ) + appendResult2043_g50723 );
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch3312_g50723 = Vertex_Motion_World1118_g50723;
				#else
				float3 staticSwitch3312_g50723 = ( Vertex_Motion_Object833_g50723 + ( 0.0 * _VertexDataMode ) );
				#endif
				half Global_Vertex_Size174_g50723 = break322_g51522.w;
				float lerpResult346_g50723 = lerp( 1.0 , Global_Vertex_Size174_g50723 , _GlobalSize);
				float3 appendResult3480_g50723 = (float3(lerpResult346_g50723 , lerpResult346_g50723 , lerpResult346_g50723));
				half3 ObjectData20_g51435 = appendResult3480_g50723;
				half3 _Vector11 = half3(1,1,1);
				half3 WorldData19_g51435 = _Vector11;
				#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g51435 = WorldData19_g51435;
				#else
				float3 staticSwitch14_g51435 = ObjectData20_g51435;
				#endif
				half3 Vertex_Size1741_g50723 = staticSwitch14_g51435;
				half3 _Vector5 = half3(1,1,1);
				float3 Vertex_SizeFade1740_g50723 = _Vector5;
				half3 Grass_Coverage2661_g50723 = half3(0,0,0);
				float3 Final_VertexPosition890_g50723 = ( ( staticSwitch3312_g50723 * Vertex_Size1741_g50723 * Vertex_SizeFade1740_g50723 ) + Mesh_PivotsOS2291_g50723 + Grass_Coverage2661_g50723 );
				
				float2 vertexToFrag11_g51423 = ( ( inputMesh.ase_texcoord.xy * (_MainUVs).xy ) + (_MainUVs).zw );
				outputPackedVaryingsMeshToPS.ase_texcoord7.xy = vertexToFrag11_g51423;
				float2 appendResult21_g51510 = (float2(inputMesh.ase_texcoord.z , inputMesh.ase_texcoord.w));
				float2 Mesh_DetailCoord3_g50723 = appendResult21_g51510;
				float2 vertexToFrag11_g51446 = ( ( Mesh_DetailCoord3_g50723 * (_SecondUVs).xy ) + (_SecondUVs).zw );
				outputPackedVaryingsMeshToPS.ase_texcoord7.zw = vertexToFrag11_g51446;
				half Mesh_DetailMask90_g50723 = inputMesh.ase_color.b;
				float vertexToFrag11_g51546 = ( ( Mesh_DetailMask90_g50723 - 0.5 ) + _DetailMeshValue );
				outputPackedVaryingsMeshToPS.ase_texcoord8.x = vertexToFrag11_g51546;
				float3 ase_worldNormal = TransformObjectToWorldNormal(inputMesh.normalOS);
				float3 ase_worldTangent = TransformObjectToWorldDir(inputMesh.tangentOS.xyz);
				float ase_vertexTangentSign = inputMesh.tangentOS.w * unity_WorldTransformParams.w;
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				outputPackedVaryingsMeshToPS.ase_texcoord8.yzw = ase_worldBitangent;
				float3 vertexToFrag3890_g50723 = ase_worldPos;
				outputPackedVaryingsMeshToPS.ase_texcoord9.xyz = vertexToFrag3890_g50723;
				
				float2 vertexToFrag11_g51537 = ( ( inputMesh.ase_texcoord.xy * (_EmissiveUVs).xy ) + (_EmissiveUVs).zw );
				outputPackedVaryingsMeshToPS.ase_texcoord10.xy = vertexToFrag11_g51537;
				
				float temp_output_7_0_g51545 = TVE_CameraFadeStart;
				float saferPower3976_g50723 = max( saturate( ( ( distance( ase_worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g51545 ) / ( TVE_CameraFadeEnd - temp_output_7_0_g51545 ) ) ) , 0.0001 );
				float temp_output_3976_0_g50723 = pow( saferPower3976_g50723 , _FadeCameraValue );
				float vertexToFrag11_g51542 = temp_output_3976_0_g50723;
				outputPackedVaryingsMeshToPS.ase_texcoord9.w = vertexToFrag11_g51542;
				
				outputPackedVaryingsMeshToPS.ase_color = inputMesh.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord10.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = Final_VertexPosition890_g50723;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif
				inputMesh.normalOS = inputMesh.normalOS;
				inputMesh.tangentOS = inputMesh.tangentOS;
				return inputMesh;
			}

			PackedVaryingsMeshToPS VertexFunction(AttributesMesh inputMesh)
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS = (PackedVaryingsMeshToPS)0;
				AttributesMesh defaultMesh = inputMesh;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );

				inputMesh = ApplyMeshModification( inputMesh, _TimeParameters.xyz, outputPackedVaryingsMeshToPS);

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				float3 normalWS = TransformObjectToWorldNormal(inputMesh.normalOS);
				float4 tangentWS = float4(TransformObjectToWorldDir(inputMesh.tangentOS.xyz), inputMesh.tangentOS.w);

				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
				float4 VPASSpreviousPositionCS;
				float4 VPASSpositionCS = mul(UNITY_MATRIX_UNJITTERED_VP, float4(positionRWS, 1.0));

				bool forceNoMotion = unity_MotionVectorsParams.y == 0.0;
				if (forceNoMotion)
				{
					VPASSpreviousPositionCS = float4(0.0, 0.0, 0.0, 1.0);
				}
				else
				{
					bool hasDeformation = unity_MotionVectorsParams.x > 0.0;
					float3 effectivePositionOS = (hasDeformation ? inputMesh.previousPositionOS : defaultMesh.positionOS);
					#if defined(_ADD_PRECOMPUTED_VELOCITY)
					effectivePositionOS -= inputMesh.precomputedVelocity;
					#endif

					#if defined(HAVE_MESH_MODIFICATION)
						AttributesMesh previousMesh = defaultMesh;
						previousMesh.positionOS = effectivePositionOS ;
						PackedVaryingsMeshToPS test = (PackedVaryingsMeshToPS)0;
						float3 curTime = _TimeParameters.xyz;
						previousMesh = ApplyMeshModification(previousMesh, _LastTimeParameters.xyz, test);
						_TimeParameters.xyz = curTime;
						float3 previousPositionRWS = TransformPreviousObjectToWorld(previousMesh.positionOS);
					#else
						float3 previousPositionRWS = TransformPreviousObjectToWorld(effectivePositionOS);
					#endif

					#ifdef ATTRIBUTES_NEED_NORMAL
						float3 normalWS = TransformPreviousObjectToWorldNormal(defaultMesh.normalOS);
					#else
						float3 normalWS = float3(0.0, 0.0, 0.0);
					#endif

					#if defined(HAVE_VERTEX_MODIFICATION)
						//ApplyVertexModification(inputMesh, normalWS, previousPositionRWS, _LastTimeParameters.xyz);
					#endif

					VPASSpreviousPositionCS = mul(UNITY_MATRIX_PREV_VP, float4(previousPositionRWS, 1.0));
				}
				#endif

				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.interp00.xyz = positionRWS;
				outputPackedVaryingsMeshToPS.interp01.xyz = normalWS;
				outputPackedVaryingsMeshToPS.interp02.xyzw = tangentWS;
				outputPackedVaryingsMeshToPS.interp03.xyzw = inputMesh.uv1;
				outputPackedVaryingsMeshToPS.interp04.xyzw = inputMesh.uv2;

				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					outputPackedVaryingsMeshToPS.vpassPositionCS = float3(VPASSpositionCS.xyw);
					outputPackedVaryingsMeshToPS.vpassPreviousPositionCS = float3(VPASSpreviousPositionCS.xyw);
				#endif
				return outputPackedVaryingsMeshToPS;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					float3 previousPositionOS : TEXCOORD4;
					#if defined (_ADD_PRECOMPUTED_VELOCITY)
						float3 precomputedVelocity : TEXCOORD5;
					#endif
				#endif
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( AttributesMesh v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.uv1 = v.uv1;
				o.uv2 = v.uv2;
				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					o.previousPositionOS = v.previousPositionOS;
					#if defined (_ADD_PRECOMPUTED_VELOCITY)
						o.precomputedVelocity = v.precomputedVelocity;
					#endif
				#endif
				o.ase_texcoord = v.ase_texcoord;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			PackedVaryingsMeshToPS DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				AttributesMesh o = (AttributesMesh) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.uv1 = patch[0].uv1 * bary.x + patch[1].uv1 * bary.y + patch[2].uv1 * bary.z;
				o.uv2 = patch[0].uv2 * bary.x + patch[1].uv2 * bary.y + patch[2].uv2 * bary.z;
				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					o.previousPositionOS = patch[0].previousPositionOS * bary.x + patch[1].previousPositionOS * bary.y + patch[2].previousPositionOS * bary.z;
					#if defined (_ADD_PRECOMPUTED_VELOCITY)
						o.precomputedVelocity = patch[0].precomputedVelocity * bary.x + patch[1].precomputedVelocity * bary.y + patch[2].precomputedVelocity * bary.z;
					#endif
				#endif
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			PackedVaryingsMeshToPS Vert ( AttributesMesh v )
			{
				return VertexFunction( v );
			}
			#endif

			void Frag(PackedVaryingsMeshToPS packedInput,
					#ifdef OUTPUT_SPLIT_LIGHTING
						out float4 outColor : SV_Target0,
						out float4 outDiffuseLighting : SV_Target1,
						OUTPUT_SSSBUFFER(outSSSBuffer)
					#else
						out float4 outColor : SV_Target0
					#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
						, out float4 outMotionVec : SV_Target1
					#endif
					#endif
					#ifdef _DEPTHOFFSET_ON
						, out float outputDepth : SV_Depth
					#endif
					
						)
			{
				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					outMotionVec = float4(2.0, 0.0, 0.0, 0.0);
				#endif

				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );
				float3 positionRWS = packedInput.interp00.xyz;
				float3 normalWS = packedInput.interp01.xyz;
				float4 tangentWS = packedInput.interp02.xyzw;

				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;
				input.positionRWS = positionRWS;
				input.tangentToWorld = BuildTangentToWorld(tangentWS, normalWS);
				input.texCoord1 = packedInput.interp03.xyzw;
				input.texCoord2 = packedInput.interp04.xyzw;

				#if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
				input.isFrontFace = IS_FRONT_VFACE( packedInput.cullFace, true, false);
				#elif SHADER_STAGE_FRAGMENT
				#if defined(ASE_NEED_CULLFACE)
				input.isFrontFace = IS_FRONT_VFACE(packedInput.cullFace, true, false);
				#endif
				#endif
				half isFrontFace = input.isFrontFace;

				input.positionSS.xy = _OffScreenRendering > 0 ? (input.positionSS.xy * _OffScreenDownsampleFactor) : input.positionSS.xy;
				uint2 tileIndex = uint2(input.positionSS.xy) / GetTileSize ();

				PositionInputs posInput = GetPositionInput( input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS.xyz, tileIndex );

				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				GlobalSurfaceDescription surfaceDescription = (GlobalSurfaceDescription)0;
				float2 vertexToFrag11_g51423 = packedInput.ase_texcoord7.xy;
				half2 Main_UVs15_g50723 = vertexToFrag11_g51423;
				float4 tex2DNode29_g50723 = SAMPLE_TEXTURE2D( _MainAlbedoTex, sampler_MainAlbedoTex, Main_UVs15_g50723 );
				float3 temp_output_51_0_g50723 = ( (_MainColor).rgb * (tex2DNode29_g50723).rgb );
				half3 Main_Albedo99_g50723 = temp_output_51_0_g50723;
				float2 vertexToFrag11_g51446 = packedInput.ase_texcoord7.zw;
				half2 Second_UVs17_g50723 = vertexToFrag11_g51446;
				half3 Second_Albedo153_g50723 = (( _SecondColor * SAMPLE_TEXTURE2D( _SecondAlbedoTex, sampler_SecondMaskTex, Second_UVs17_g50723 ) )).rgb;
				float vertexToFrag11_g51546 = packedInput.ase_texcoord8.x;
				float temp_output_3919_0_g50723 = vertexToFrag11_g51546;
				half Blend_Source1540_g50723 = temp_output_3919_0_g50723;
				float4 tex2DNode35_g50723 = SAMPLE_TEXTURE2D( _MainMaskTex, sampler_MainAlbedoTex, Main_UVs15_g50723 );
				half Main_Mask57_g50723 = tex2DNode35_g50723.b;
				float4 tex2DNode33_g50723 = SAMPLE_TEXTURE2D( _SecondMaskTex, sampler_SecondMaskTex, Second_UVs17_g50723 );
				half Second_Mask81_g50723 = tex2DNode33_g50723.b;
				float lerpResult1327_g50723 = lerp( Main_Mask57_g50723 , Second_Mask81_g50723 , _DetailMaskMode);
				float lerpResult4058_g50723 = lerp( lerpResult1327_g50723 , ( 1.0 - lerpResult1327_g50723 ) , _DetailMaskInvertMode);
				float temp_output_7_0_g51551 = _DetailBlendMinValue;
				half Mask_Detail147_g50723 = saturate( ( ( saturate( ( Blend_Source1540_g50723 + ( Blend_Source1540_g50723 * lerpResult4058_g50723 ) ) ) - temp_output_7_0_g51551 ) / ( _DetailBlendMaxValue - temp_output_7_0_g51551 ) ) );
				float3 lerpResult235_g50723 = lerp( Main_Albedo99_g50723 , ( Main_Albedo99_g50723 * Second_Albedo153_g50723 * 4.594794 ) , Mask_Detail147_g50723);
				float3 lerpResult208_g50723 = lerp( Main_Albedo99_g50723 , Second_Albedo153_g50723 , Mask_Detail147_g50723);
				#if defined(TVE_DETAIL_BLEND_OVERLAY)
				float3 staticSwitch4062_g50723 = lerpResult235_g50723;
				#elif defined(TVE_DETAIL_BLEND_REPLACE)
				float3 staticSwitch4062_g50723 = lerpResult208_g50723;
				#else
				float3 staticSwitch4062_g50723 = lerpResult235_g50723;
				#endif
				#if defined(TVE_DETAIL_MODE_OFF)
				float3 staticSwitch255_g50723 = Main_Albedo99_g50723;
				#elif defined(TVE_DETAIL_MODE_ON)
				float3 staticSwitch255_g50723 = staticSwitch4062_g50723;
				#else
				float3 staticSwitch255_g50723 = Main_Albedo99_g50723;
				#endif
				half3 Blend_Albedo265_g50723 = staticSwitch255_g50723;
				half3 Blend_AlbedoTinted2808_g50723 = ( float3(1,1,1) * float3(1,1,1) * float3(1,1,1) * Blend_Albedo265_g50723 );
				half3 Blend_AlbedoColored863_g50723 = Blend_AlbedoTinted2808_g50723;
				half3 Blend_AlbedoAndSubsurface149_g50723 = Blend_AlbedoColored863_g50723;
				half3 Global_OverlayColor1758_g50723 = (TVE_OverlayColor).rgb;
				float3 unpack4112_g50723 = UnpackNormalScale( SAMPLE_TEXTURE2D( _MainNormalTex, sampler_MainAlbedoTex, Main_UVs15_g50723 ), _MainNormalValue );
				unpack4112_g50723.z = lerp( 1, unpack4112_g50723.z, saturate(_MainNormalValue) );
				half3 Main_Normal137_g50723 = unpack4112_g50723;
				float3 ase_worldBitangent = packedInput.ase_texcoord8.yzw;
				float3 tanToWorld0 = float3( tangentWS.xyz.x, ase_worldBitangent.x, normalWS.x );
				float3 tanToWorld1 = float3( tangentWS.xyz.y, ase_worldBitangent.y, normalWS.y );
				float3 tanToWorld2 = float3( tangentWS.xyz.z, ase_worldBitangent.z, normalWS.z );
				float3 tanNormal4099_g50723 = Main_Normal137_g50723;
				float3 worldNormal4099_g50723 = float3(dot(tanToWorld0,tanNormal4099_g50723), dot(tanToWorld1,tanNormal4099_g50723), dot(tanToWorld2,tanNormal4099_g50723));
				float3 Main_Normal_WS4101_g50723 = worldNormal4099_g50723;
				float lerpResult3567_g50723 = lerp( _OverlayBottomValue , 1.0 , Main_Normal_WS4101_g50723.y);
				half Main_AlbedoTex_G3526_g50723 = tex2DNode29_g50723.g;
				half Second_AlbedoTex_G3581_g50723 = (SAMPLE_TEXTURE2D( _SecondAlbedoTex, sampler_SecondMaskTex, Second_UVs17_g50723 )).g;
				float lerpResult3579_g50723 = lerp( Main_AlbedoTex_G3526_g50723 , Second_AlbedoTex_G3581_g50723 , Mask_Detail147_g50723);
				#if defined(TVE_DETAIL_MODE_OFF)
				float staticSwitch3574_g50723 = Main_AlbedoTex_G3526_g50723;
				#elif defined(TVE_DETAIL_MODE_ON)
				float staticSwitch3574_g50723 = lerpResult3579_g50723;
				#else
				float staticSwitch3574_g50723 = Main_AlbedoTex_G3526_g50723;
				#endif
				float3 vertexToFrag3890_g50723 = packedInput.ase_texcoord9.xyz;
				float3 PositionWS_PerVertex3905_g50723 = vertexToFrag3890_g50723;
				float3 Position82_g51514 = PositionWS_PerVertex3905_g50723;
				float temp_output_84_0_g51514 = _LayerExtrasValue;
				float4 lerpResult88_g51514 = lerp( TVE_ExtrasParams , SAMPLE_TEXTURE2D_ARRAY( TVE_ExtrasTex, samplerTVE_ExtrasTex, ( (TVE_ExtrasCoord).zw + ( (TVE_ExtrasCoord).xy * (Position82_g51514).xz ) ),temp_output_84_0_g51514 ) , TVE_ExtrasUsage[(int)temp_output_84_0_g51514]);
				float4 break89_g51514 = lerpResult88_g51514;
				half Global_Extras_Overlay156_g50723 = break89_g51514.b;
				float temp_output_1025_0_g50723 = ( _GlobalOverlay * Global_Extras_Overlay156_g50723 );
				half Overlay_Commons1365_g50723 = temp_output_1025_0_g50723;
				float temp_output_7_0_g51561 = _OverlayMaskMinValue;
				half Overlay_Mask269_g50723 = saturate( ( ( ( ( ( lerpResult3567_g50723 * 0.5 ) + staticSwitch3574_g50723 ) * Overlay_Commons1365_g50723 ) - temp_output_7_0_g51561 ) / ( _OverlayMaskMaxValue - temp_output_7_0_g51561 ) ) );
				float3 lerpResult336_g50723 = lerp( Blend_AlbedoAndSubsurface149_g50723 , Global_OverlayColor1758_g50723 , Overlay_Mask269_g50723);
				half3 Final_Albedo359_g50723 = lerpResult336_g50723;
				float3 temp_cast_3 = (1.0).xxx;
				float Mesh_Occlusion318_g50723 = packedInput.ase_color.g;
				float temp_output_7_0_g51557 = _VertexOcclusionMinValue;
				float3 lerpResult2945_g50723 = lerp( (_VertexOcclusionColor).rgb , temp_cast_3 , saturate( ( ( Mesh_Occlusion318_g50723 - temp_output_7_0_g51557 ) / ( _VertexOcclusionMaxValue - temp_output_7_0_g51557 ) ) ));
				float3 Vertex_Occlusion648_g50723 = lerpResult2945_g50723;
				
				float3 unpack4114_g50723 = UnpackNormalScale( SAMPLE_TEXTURE2D( _SecondNormalTex, sampler_SecondMaskTex, Second_UVs17_g50723 ), _SecondNormalValue );
				unpack4114_g50723.z = lerp( 1, unpack4114_g50723.z, saturate(_SecondNormalValue) );
				half3 Second_Normal179_g50723 = unpack4114_g50723;
				float3 lerpResult230_g50723 = lerp( float3( 0,0,1 ) , Second_Normal179_g50723 , Mask_Detail147_g50723);
				float3 lerpResult3372_g50723 = lerp( float3( 0,0,1 ) , Main_Normal137_g50723 , _DetailNormalValue);
				float3 lerpResult3376_g50723 = lerp( Main_Normal137_g50723 , BlendNormal( lerpResult3372_g50723 , Second_Normal179_g50723 ) , Mask_Detail147_g50723);
				#if defined(TVE_DETAIL_BLEND_OVERLAY)
				float3 staticSwitch4063_g50723 = BlendNormal( Main_Normal137_g50723 , lerpResult230_g50723 );
				#elif defined(TVE_DETAIL_BLEND_REPLACE)
				float3 staticSwitch4063_g50723 = lerpResult3376_g50723;
				#else
				float3 staticSwitch4063_g50723 = BlendNormal( Main_Normal137_g50723 , lerpResult230_g50723 );
				#endif
				#if defined(TVE_DETAIL_MODE_OFF)
				float3 staticSwitch267_g50723 = Main_Normal137_g50723;
				#elif defined(TVE_DETAIL_MODE_ON)
				float3 staticSwitch267_g50723 = staticSwitch4063_g50723;
				#else
				float3 staticSwitch267_g50723 = Main_Normal137_g50723;
				#endif
				float3 temp_output_13_0_g51558 = staticSwitch267_g50723;
				float3 switchResult12_g51558 = (((isFrontFace>0)?(temp_output_13_0_g51558):(( temp_output_13_0_g51558 * _render_normals_options ))));
				half3 Blend_Normal312_g50723 = switchResult12_g51558;
				half3 Final_Normal366_g50723 = Blend_Normal312_g50723;
				
				float3 temp_cast_5 = (( 0.04 * _RenderSpecular )).xxx;
				
				float3 hdEmission4189_g50723 = ASEGetEmissionHDRColor(_EmissiveColor.rgb,_EmissiveIntensityParams.x,_EmissiveExposureValue,GetInverseCurrentExposureMultiplier());
				float2 vertexToFrag11_g51537 = packedInput.ase_texcoord10.xy;
				half2 Emissive_UVs2468_g50723 = vertexToFrag11_g51537;
				half3 Final_Emissive2476_g50723 = ( (( hdEmission4189_g50723 * SAMPLE_TEXTURE2D( _EmissiveTex, sampler_EmissiveTex, Emissive_UVs2468_g50723 ) )).rgb * TVE_EmissiveValue );
				
				half Main_Smoothness227_g50723 = ( tex2DNode35_g50723.a * _MainSmoothnessValue );
				half Second_Smoothness236_g50723 = ( tex2DNode33_g50723.a * _SecondSmoothnessValue );
				float lerpResult266_g50723 = lerp( Main_Smoothness227_g50723 , Second_Smoothness236_g50723 , Mask_Detail147_g50723);
				#if defined(TVE_DETAIL_BLEND_OVERLAY)
				float staticSwitch4065_g50723 = Main_Smoothness227_g50723;
				#elif defined(TVE_DETAIL_BLEND_REPLACE)
				float staticSwitch4065_g50723 = lerpResult266_g50723;
				#else
				float staticSwitch4065_g50723 = Main_Smoothness227_g50723;
				#endif
				#if defined(TVE_DETAIL_MODE_OFF)
				float staticSwitch297_g50723 = Main_Smoothness227_g50723;
				#elif defined(TVE_DETAIL_MODE_ON)
				float staticSwitch297_g50723 = staticSwitch4065_g50723;
				#else
				float staticSwitch297_g50723 = Main_Smoothness227_g50723;
				#endif
				half Blend_Smoothness314_g50723 = staticSwitch297_g50723;
				half Global_OverlaySmoothness311_g50723 = TVE_OverlaySmoothness;
				float lerpResult343_g50723 = lerp( Blend_Smoothness314_g50723 , Global_OverlaySmoothness311_g50723 , Overlay_Mask269_g50723);
				half Final_Smoothness371_g50723 = lerpResult343_g50723;
				half Global_Extras_Wetness305_g50723 = break89_g51514.g;
				float lerpResult3673_g50723 = lerp( 0.0 , Global_Extras_Wetness305_g50723 , _GlobalWetness);
				half Final_SmoothnessAndWetness4130_g50723 = saturate( ( Final_Smoothness371_g50723 + lerpResult3673_g50723 ) );
				
				float lerpResult240_g50723 = lerp( 1.0 , tex2DNode35_g50723.g , _MainOcclusionValue);
				half Main_Occlusion247_g50723 = lerpResult240_g50723;
				float lerpResult239_g50723 = lerp( 1.0 , tex2DNode33_g50723.g , _SecondOcclusionValue);
				half Second_Occlusion251_g50723 = lerpResult239_g50723;
				float lerpResult294_g50723 = lerp( Main_Occlusion247_g50723 , Second_Occlusion251_g50723 , Mask_Detail147_g50723);
				#if defined(TVE_DETAIL_BLEND_OVERLAY)
				float staticSwitch4066_g50723 = Main_Occlusion247_g50723;
				#elif defined(TVE_DETAIL_BLEND_REPLACE)
				float staticSwitch4066_g50723 = lerpResult294_g50723;
				#else
				float staticSwitch4066_g50723 = Main_Occlusion247_g50723;
				#endif
				#if defined(TVE_DETAIL_MODE_OFF)
				float staticSwitch310_g50723 = Main_Occlusion247_g50723;
				#elif defined(TVE_DETAIL_MODE_ON)
				float staticSwitch310_g50723 = staticSwitch4066_g50723;
				#else
				float staticSwitch310_g50723 = Main_Occlusion247_g50723;
				#endif
				half Blend_Occlusion323_g50723 = staticSwitch310_g50723;
				
				float localCustomAlphaClip3735_g50723 = ( 0.0 );
				float vertexToFrag11_g51542 = packedInput.ase_texcoord9.w;
				half Fade_Camera3743_g50723 = vertexToFrag11_g51542;
				half Final_AlphaFade3727_g50723 = ( 1.0 * Fade_Camera3743_g50723 );
				float temp_output_41_0_g51554 = Final_AlphaFade3727_g50723;
				float Main_Alpha316_g50723 = ( _MainColor.a * tex2DNode29_g50723.a );
				half AlphaTreshold2132_g50723 = _Cutoff;
				#ifdef TVE_ALPHA_CLIP
				float staticSwitch3792_g50723 = ( Main_Alpha316_g50723 - ( AlphaTreshold2132_g50723 - 0.5 ) );
				#else
				float staticSwitch3792_g50723 = Main_Alpha316_g50723;
				#endif
				half Final_Alpha3754_g50723 = staticSwitch3792_g50723;
				float temp_output_661_0_g50723 = ( saturate( ( temp_output_41_0_g51554 + ( temp_output_41_0_g51554 * SAMPLE_TEXTURE3D( TVE_ScreenTex3D, samplerTVE_ScreenTex3D, ( TVE_ScreenTexCoord * PositionWS_PerVertex3905_g50723 ) ).r ) ) ) * Final_Alpha3754_g50723 );
				float Alpha3735_g50723 = temp_output_661_0_g50723;
				float Treshold3735_g50723 = 0.5;
				{
				#if TVE_ALPHA_CLIP
				clip(Alpha3735_g50723 - Treshold3735_g50723);
				#endif
				}
				half Final_Clip914_g50723 = saturate( Alpha3735_g50723 );
				
				surfaceDescription.Albedo = ( Final_Albedo359_g50723 * Vertex_Occlusion648_g50723 );
				surfaceDescription.Normal = Final_Normal366_g50723;
				surfaceDescription.BentNormal = float3( 0, 0, 1 );
				surfaceDescription.CoatMask = 0;
				surfaceDescription.Metallic = 0;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = temp_cast_5;
				#endif

				surfaceDescription.Emission = Final_Emissive2476_g50723;
				surfaceDescription.Smoothness = Final_SmoothnessAndWetness4130_g50723;
				surfaceDescription.Occlusion = Blend_Occlusion323_g50723;
				surfaceDescription.Alpha = Final_Clip914_g50723;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				#endif

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceDescription.SpecularAAScreenSpaceVariance = 0;
				surfaceDescription.SpecularAAThreshold = 0;
				#endif

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceDescription.SpecularOcclusion = 0;
				#endif

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceDescription.Thickness = 1;
				#endif

				#ifdef _HAS_REFRACTION
				surfaceDescription.RefractionIndex = 1;
				surfaceDescription.RefractionColor = float3( 1, 1, 1 );
				surfaceDescription.RefractionDistance = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceDescription.SubsurfaceMask = 1;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceDescription.DiffusionProfile = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceDescription.Anisotropy = 1;
				surfaceDescription.Tangent = float3( 1, 0, 0 );
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceDescription.IridescenceMask = 0;
				surfaceDescription.IridescenceThickness = 0;
				#endif

				#ifdef _ASE_BAKEDGI
				surfaceDescription.BakedGI = 0;
				#endif
				#ifdef _ASE_BAKEDBACKGI
				surfaceDescription.BakedBackGI = 0;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription,input, V, posInput, surfaceData, builtinData);

				BSDFData bsdfData = ConvertSurfaceDataToBSDFData(input.positionSS.xy, surfaceData);

				PreLightData preLightData = GetPreLightData(V, posInput, bsdfData);

				outColor = float4(0.0, 0.0, 0.0, 0.0);
				#ifdef DEBUG_DISPLAY
				#ifdef OUTPUT_SPLIT_LIGHTING
					outDiffuseLighting = 0;
					ENCODE_INTO_SSSBUFFER(surfaceData, posInput.positionSS, outSSSBuffer);
				#endif

				bool viewMaterial = false;
				int bufferSize = _DebugViewMaterialArray[0].x;
				if (bufferSize != 0)
				{
					bool needLinearToSRGB = false;
					float3 result = float3(1.0, 0.0, 1.0);

					for (int index = 1; index <= bufferSize; index++)
					{
						int indexMaterialProperty = _DebugViewMaterialArray[index].x;

						if (indexMaterialProperty != 0)
						{
							viewMaterial = true;

							GetPropertiesDataDebug(indexMaterialProperty, result, needLinearToSRGB);
							GetVaryingsDataDebug(indexMaterialProperty, input, result, needLinearToSRGB);
							GetBuiltinDataDebug(indexMaterialProperty, builtinData, posInput, result, needLinearToSRGB);
							GetSurfaceDataDebug(indexMaterialProperty, surfaceData, result, needLinearToSRGB);
							GetBSDFDataDebug(indexMaterialProperty, bsdfData, result, needLinearToSRGB);
						}
					}

					if (!needLinearToSRGB)
						result = SRGBToLinear(max(0, result));

					outColor = float4(result, 1.0);
				}

				if (!viewMaterial)
				{
					if (_DebugFullScreenMode == FULLSCREENDEBUGMODE_VALIDATE_DIFFUSE_COLOR || _DebugFullScreenMode == FULLSCREENDEBUGMODE_VALIDATE_SPECULAR_COLOR)
					{
						float3 result = float3(0.0, 0.0, 0.0);

						GetPBRValidatorDebug(surfaceData, result);

						outColor = float4(result, 1.0f);
					}
					else if (_DebugFullScreenMode == FULLSCREENDEBUGMODE_TRANSPARENCY_OVERDRAW)
					{
						float4 result = _DebugTransparencyOverdrawWeight * float4(TRANSPARENCY_OVERDRAW_COST, TRANSPARENCY_OVERDRAW_COST, TRANSPARENCY_OVERDRAW_COST, TRANSPARENCY_OVERDRAW_A);
						outColor = result;
					}
					else
				#endif
					{
				#ifdef _SURFACE_TYPE_TRANSPARENT
						uint featureFlags = LIGHT_FEATURE_MASK_FLAGS_TRANSPARENT;
				#else
						uint featureFlags = LIGHT_FEATURE_MASK_FLAGS_OPAQUE;
				#endif
					
						LightLoopOutput lightLoopOutput;
						LightLoop(V, posInput, preLightData, bsdfData, builtinData, featureFlags, lightLoopOutput);

						// Alias
						float3 diffuseLighting = lightLoopOutput.diffuseLighting;
						float3 specularLighting = lightLoopOutput.specularLighting;
					
						diffuseLighting *= GetCurrentExposureMultiplier();
						specularLighting *= GetCurrentExposureMultiplier();

				#ifdef OUTPUT_SPLIT_LIGHTING
						if (_EnableSubsurfaceScattering != 0 && ShouldOutputSplitLighting(bsdfData))
						{
							outColor = float4(specularLighting, 1.0);
							outDiffuseLighting = float4(TagLightingForSSS(diffuseLighting), 1.0);
						}
						else
						{
							outColor = float4(diffuseLighting + specularLighting, 1.0);
							outDiffuseLighting = 0;
						}
						ENCODE_INTO_SSSBUFFER(surfaceData, posInput.positionSS, outSSSBuffer);
				#else
						outColor = ApplyBlendMode(diffuseLighting, specularLighting, builtinData.opacity);
						outColor = EvaluateAtmosphericScattering(posInput, V, outColor);
				#endif

				#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
						float4 VPASSpositionCS = float4(packedInput.vpassPositionCS.xy, 0.0, packedInput.vpassPositionCS.z);
						float4 VPASSpreviousPositionCS = float4(packedInput.vpassPreviousPositionCS.xy, 0.0, packedInput.vpassPreviousPositionCS.z);

						bool forceNoMotion = any(unity_MotionVectorsParams.yw == 0.0);
						if (!forceNoMotion)
						{
							float2 motionVec = CalculateMotionVector(VPASSpositionCS, VPASSpreviousPositionCS);
							EncodeMotionVector(motionVec * 0.5, outMotionVec);
							outMotionVec.zw = 1.0;
						}
				#endif
					}

				#ifdef DEBUG_DISPLAY
				}
				#endif

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif
			}
			ENDHLSL
		}
		
	}
	CustomEditor "TVEShaderCoreGUI"
	
	Fallback "Hidden/BOXOPHOBIC/The Vegetation Engine/Fallback"
}
/*ASEBEGIN
Version=18910
1920;0;1920;1029;2765.719;944;1;True;False
Node;AmplifyShaderEditor.RangedFloatNode;17;-1600,-768;Half;False;Property;_render_zw;_render_zw;215;1;[HideInInspector];Create;True;0;2;Opaque;0;Transparent;1;0;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;127;-2176,-896;Half;False;Property;_IsBarkShader;_IsBarkShader;210;1;[HideInInspector];Create;True;0;0;0;True;0;False;1;1;1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;383;-1344,-896;Inherit;False;Compile All Shaders;-1;;50722;e67c8238031dbf04ab79a5d4d63d1b4f;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;10;-2176,-768;Half;False;Property;_render_cull;_render_cull;212;1;[HideInInspector];Create;True;0;3;Both;0;Back;1;Front;2;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;7;-1792,-768;Half;False;Property;_render_dst;_render_dst;214;1;[HideInInspector];Create;True;0;2;Opaque;0;Transparent;1;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;350;-2176,-384;Inherit;False;Base Shader;0;;50723;856f7164d1c579d43a5cf4968a75ca43;79,3880,1,3882,1,3957,1,4029,1,4028,1,3903,1,3904,1,3900,1,3908,1,4172,1,1300,1,1298,1,4179,1,3586,0,1271,1,3889,1,1708,0,3658,0,3509,1,1712,1,3873,1,1714,1,1715,1,1718,1,1717,1,916,1,1762,0,1763,0,3568,1,1949,1,1776,0,3475,1,893,0,1745,1,3479,0,3501,1,3221,2,1646,0,1690,0,1757,0,2807,0,3886,0,2953,0,3887,0,3243,0,3888,0,3728,1,3949,0,2172,0,3883,0,2658,0,1742,0,3484,0,3575,1,1733,1,1734,1,1736,1,1737,1,1735,1,1550,0,878,0,4070,0,4069,0,4067,0,4068,0,4072,0,860,1,3544,1,2261,1,2260,1,2032,1,2054,1,2060,0,2036,0,2062,0,2039,0,4177,1,3592,1,2750,0;0;19;FLOAT3;0;FLOAT3;528;FLOAT3;2489;FLOAT;531;FLOAT;4135;FLOAT;529;FLOAT;3678;FLOAT;530;FLOAT;4127;FLOAT;4122;FLOAT;4134;FLOAT;1235;FLOAT3;1230;FLOAT;1461;FLOAT;1290;FLOAT;721;FLOAT;532;FLOAT;629;FLOAT3;534
Node;AmplifyShaderEditor.FunctionNode;382;-1856,384;Inherit;False;Define PIPELINE HD;-1;;51562;7af1bc24c286d754db63fb6a44aba77b;0;0;1;FLOAT;529
Node;AmplifyShaderEditor.FunctionNode;307;-2176,384;Inherit;False;Define TVE IS VEGETATION SHADER;-1;;51563;b458122dd75182d488380bd0f592b9e6;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;134;-1984,-896;Half;False;Property;_IsStandardShader;_IsStandardShader;211;1;[HideInInspector];Create;True;0;0;0;True;0;False;1;1;1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;20;-1984,-768;Half;False;Property;_render_src;_render_src;213;1;[HideInInspector];Create;True;0;0;0;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;384;-1536,-896;Inherit;False;Compile Core;-1;;51564;634b02fd1f32e6a4c875d8fc2c450956;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;377;-1376,-384;Float;False;False;-1;2;Rendering.HighDefinition.LitShaderGraphGUI;0;14;New Amplify Shader;28cd5599e02859647ae1798e4fcaef6c;True;Distortion;0;6;Distortion;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;True;4;1;False;-1;1;False;-1;4;1;False;-1;1;False;-1;True;1;False;-1;1;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;0;True;-10;255;False;-1;255;True;-11;7;False;-1;3;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;2;False;-1;True;3;False;-1;False;True;1;LightMode=DistortionVectors;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;379;-1376,-384;Float;False;False;-1;2;Rendering.HighDefinition.LitShaderGraphGUI;0;14;New Amplify Shader;28cd5599e02859647ae1798e4fcaef6c;True;TransparentDepthPrepass;0;8;TransparentDepthPrepass;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;True;1;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;-25;False;False;False;False;False;False;False;False;False;True;True;0;False;-1;255;False;-1;255;False;-1;7;False;-1;3;False;-1;1;False;-1;1;False;-1;7;False;-1;3;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;False;False;True;1;LightMode=TransparentDepthPrepass;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;372;-1376,-384;Float;False;False;-1;2;Rendering.HighDefinition.LitShaderGraphGUI;0;14;New Amplify Shader;28cd5599e02859647ae1798e4fcaef6c;True;META;0;1;META;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;373;-1376,-384;Float;False;False;-1;2;Rendering.HighDefinition.LitShaderGraphGUI;0;14;New Amplify Shader;28cd5599e02859647ae1798e4fcaef6c;True;ShadowCaster;0;2;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;-25;False;True;False;False;False;False;0;False;-1;False;False;False;False;False;False;False;False;False;True;1;False;-1;True;3;False;-1;False;True;1;LightMode=ShadowCaster;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;374;-1376,-384;Float;False;False;-1;2;Rendering.HighDefinition.LitShaderGraphGUI;0;14;New Amplify Shader;28cd5599e02859647ae1798e4fcaef6c;True;SceneSelectionPass;0;3;SceneSelectionPass;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=SceneSelectionPass;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;371;-1376,-384;Float;False;True;-1;2;TVEShaderCoreGUI;0;14;BOXOPHOBIC/The Vegetation Engine/Vegetation/Bark Standard Lit;28cd5599e02859647ae1798e4fcaef6c;True;GBuffer;0;0;GBuffer;35;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;-25;False;False;False;False;False;False;False;False;False;True;True;0;True;-13;255;False;-1;255;True;-12;7;False;-1;3;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;False;True;0;True;-14;False;True;1;LightMode=GBuffer;False;0;Hidden/BOXOPHOBIC/The Vegetation Engine/Fallback;0;0;Standard;42;Surface Type;0;  Rendering Pass;1;  Refraction Model;0;    Blending Mode;0;    Blend Preserves Specular;1;  Receive Fog;1;  Back Then Front Rendering;0;  Transparent Depth Prepass;0;  Transparent Depth Postpass;0;  Transparent Writes Motion Vector;0;  Distortion;0;    Distortion Mode;0;    Distortion Depth Test;1;  ZWrite;0;  Z Test;4;Double-Sided;1;Alpha Clipping;0;  Use Shadow Threshold;0;Material Type,InvertActionOnDeselection;4;  Energy Conserving Specular;1;  Transmission;1;Receive Decals;1;Receives SSR;1;Receive SSR Transparent;0;Motion Vectors;1;  Add Precomputed Velocity;0;Specular AA;0;Specular Occlusion Mode;0;Override Baked GI;0;Depth Offset;0;DOTS Instancing;1;LOD CrossFade;1;Tessellation;0;  Phong;0;  Strength;0.5,False,-1;  Type;0;  Tess;16,False,-1;  Min;10,False,-1;  Max;25,False,-1;  Edge Length;16,False,-1;  Max Displacement;25,False,-1;Vertex Position;0;0;11;True;True;True;True;True;True;False;False;False;False;True;False;;True;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;376;-1376,-384;Float;False;False;-1;2;Rendering.HighDefinition.LitShaderGraphGUI;0;14;New Amplify Shader;28cd5599e02859647ae1798e4fcaef6c;True;Motion Vectors;0;5;Motion Vectors;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;-25;False;False;False;False;False;False;False;False;False;True;True;0;True;-8;255;False;-1;255;True;-9;7;False;-1;3;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;False;False;True;1;LightMode=MotionVectors;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;380;-1376,-384;Float;False;False;-1;2;Rendering.HighDefinition.LitShaderGraphGUI;0;14;New Amplify Shader;28cd5599e02859647ae1798e4fcaef6c;True;TransparentDepthPostpass;0;9;TransparentDepthPostpass;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;True;1;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;-25;False;True;False;False;False;False;0;False;-1;False;False;False;False;False;False;False;False;False;True;1;False;-1;False;False;True;1;LightMode=TransparentDepthPostpass;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;375;-1376,-384;Float;False;False;-1;2;Rendering.HighDefinition.LitShaderGraphGUI;0;14;New Amplify Shader;28cd5599e02859647ae1798e4fcaef6c;True;DepthOnly;0;4;DepthOnly;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;-25;False;False;False;False;False;False;False;False;False;True;True;0;True;-6;255;False;-1;255;True;-7;7;False;-1;3;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;False;False;True;1;LightMode=DepthOnly;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;378;-1376,-384;Float;False;False;-1;2;Rendering.HighDefinition.LitShaderGraphGUI;0;14;New Amplify Shader;28cd5599e02859647ae1798e4fcaef6c;True;TransparentBackface;0;7;TransparentBackface;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;True;1;0;True;-19;0;True;-20;1;0;True;-21;0;True;-22;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;-1;False;False;False;True;True;True;True;True;0;True;-44;False;False;False;False;False;False;False;True;0;True;-23;True;0;True;-31;False;True;1;LightMode=TransparentBackface;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;381;-1376,-384;Float;False;False;-1;2;Rendering.HighDefinition.LitShaderGraphGUI;0;14;New Amplify Shader;28cd5599e02859647ae1798e4fcaef6c;True;Forward;0;10;Forward;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;0;False;True;1;0;True;-19;0;True;-20;1;0;True;-21;0;True;-22;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;-28;False;False;False;True;True;True;True;True;0;True;-44;False;False;False;False;False;True;True;0;True;-4;255;False;-1;255;True;-5;7;False;-1;3;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;0;True;-23;True;0;True;-30;False;True;1;LightMode=Forward;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.CommentaryNode;37;-2176,-1024;Inherit;False;1026.438;100;Internal;0;;1,0.252,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;285;-2176,256;Inherit;False;1026.438;100;Features;0;;0,1,0.5,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;33;-2176,-512;Inherit;False;1022.896;100;Final;0;;0,1,0.5,1;0;0
WireConnection;371;0;350;0
WireConnection;371;1;350;528
WireConnection;371;5;350;3678
WireConnection;371;6;350;2489
WireConnection;371;7;350;530
WireConnection;371;8;350;531
WireConnection;371;9;350;532
WireConnection;371;11;350;534
ASEEND*/
//CHKSM=1A3F5C549AEE4F6AC5CDA17807768822EFAD1809