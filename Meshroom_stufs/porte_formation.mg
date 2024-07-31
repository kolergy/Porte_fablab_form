{
    "header": {
        "pipelineVersion": "2.2",
        "releaseVersion": "2023.3.0",
        "fileVersion": "1.1",
        "template": false,
        "nodesVersions": {
            "Texturing": "6.0",
            "CameraInit": "9.0",
            "Meshing": "7.0",
            "StructureFromMotion": "3.3",
            "DepthMap": "5.0",
            "FeatureExtraction": "1.3",
            "ImageMatching": "2.0",
            "PrepareDenseScene": "3.1",
            "DepthMapFilter": "4.0",
            "MeshFiltering": "3.0",
            "FeatureMatching": "2.0"
        }
    },
    "graph": {
        "Texturing_1": {
            "nodeType": "Texturing",
            "position": [
                2000,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "d9553d6c2a48522088a174324d43521f286f1a1e"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{Meshing_1.output}",
                "imagesFolder": "{DepthMap_1.imagesFolder}",
                "inputMesh": "{MeshFiltering_1.outputMesh}",
                "inputRefMesh": "",
                "textureSide": 8192,
                "downscale": 2,
                "outputMeshFileType": "obj",
                "colorMapping": {
                    "enable": true,
                    "colorMappingFileType": "exr"
                },
                "bumpMapping": {
                    "enable": true,
                    "bumpType": "Normal",
                    "normalFileType": "exr",
                    "heightFileType": "exr"
                },
                "displacementMapping": {
                    "enable": true,
                    "displacementMappingFileType": "exr"
                },
                "unwrapMethod": "Basic",
                "useUDIM": true,
                "fillHoles": false,
                "padding": 5,
                "multiBandDownscale": 4,
                "multiBandNbContrib": {
                    "high": 1,
                    "midHigh": 5,
                    "midLow": 10,
                    "low": 0
                },
                "useScore": true,
                "bestScoreThreshold": 0.1,
                "angleHardThreshold": 90.0,
                "workingColorSpace": "sRGB",
                "outputColorSpace": "AUTO",
                "correctEV": true,
                "forceVisibleByAllVertices": false,
                "flipNormals": false,
                "visibilityRemappingMethod": "PullPush",
                "subdivisionTargetRatio": 0.8,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "outputMesh": "{cache}/{nodeType}/{uid0}/texturedMesh.{outputMeshFileTypeValue}",
                "outputMaterial": "{cache}/{nodeType}/{uid0}/texturedMesh.mtl",
                "outputTextures": "{cache}/{nodeType}/{uid0}/texture_*.exr"
            }
        },
        "Meshing_1": {
            "nodeType": "Meshing",
            "position": [
                1600,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "616213052f08c279d912cf3cd1d9cc2b9c84eb7c"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMapFilter_1.input}",
                "depthMapsFolder": "{DepthMapFilter_1.output}",
                "outputMeshFileType": "obj",
                "useBoundingBox": false,
                "boundingBox": {
                    "bboxTranslation": {
                        "x": 0.0,
                        "y": 0.0,
                        "z": 0.0
                    },
                    "bboxRotation": {
                        "x": 0.0,
                        "y": 0.0,
                        "z": 0.0
                    },
                    "bboxScale": {
                        "x": 1.0,
                        "y": 1.0,
                        "z": 1.0
                    }
                },
                "estimateSpaceFromSfM": true,
                "estimateSpaceMinObservations": 3,
                "estimateSpaceMinObservationAngle": 10.0,
                "maxInputPoints": 50000000,
                "maxPoints": 5000000,
                "maxPointsPerVoxel": 1000000,
                "minStep": 2,
                "partitioning": "singleBlock",
                "repartition": "multiResolution",
                "angleFactor": 15.0,
                "simFactor": 15.0,
                "minVis": 2,
                "pixSizeMarginInitCoef": 2.0,
                "pixSizeMarginFinalCoef": 4.0,
                "voteMarginFactor": 4.0,
                "contributeMarginFactor": 2.0,
                "simGaussianSizeInit": 10.0,
                "simGaussianSize": 10.0,
                "minAngleThreshold": 1.0,
                "refineFuse": true,
                "helperPointsGridSize": 10,
                "densify": false,
                "densifyNbFront": 1,
                "densifyNbBack": 1,
                "densifyScale": 20.0,
                "nPixelSizeBehind": 4.0,
                "fullWeight": 1.0,
                "voteFilteringForWeaklySupportedSurfaces": true,
                "addLandmarksToTheDensePointCloud": false,
                "invertTetrahedronBasedOnNeighborsNbIterations": 10,
                "minSolidAngleRatio": 0.2,
                "nbSolidAngleFilteringIterations": 2,
                "colorizeOutput": false,
                "addMaskHelperPoints": false,
                "maskHelperPointsWeight": 1.0,
                "maskBorderSize": 4,
                "maxNbConnectedHelperPoints": 50,
                "saveRawDensePointCloud": false,
                "exportDebugTetrahedralization": false,
                "seed": 0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "outputMesh": "{cache}/{nodeType}/{uid0}/mesh.{outputMeshFileTypeValue}",
                "output": "{cache}/{nodeType}/{uid0}/densePointCloud.abc"
            }
        },
        "DepthMapFilter_1": {
            "nodeType": "DepthMapFilter",
            "position": [
                1400,
                0
            ],
            "parallelization": {
                "blockSize": 24,
                "size": 43,
                "split": 2
            },
            "uids": {
                "0": "80bc8c71254209cbc00a6f3cb32eb12e53a3cc54"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMap_1.input}",
                "depthMapsFolder": "{DepthMap_1.output}",
                "minViewAngle": 2.0,
                "maxViewAngle": 70.0,
                "nNearestCams": 10,
                "minNumOfConsistentCams": 3,
                "minNumOfConsistentCamsWithLowSimilarity": 4,
                "pixToleranceFactor": 2.0,
                "pixSizeBall": 0,
                "pixSizeBallWithLowSimilarity": 0,
                "computeNormalMaps": false,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "depth": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap.exr",
                "sim": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_simMap.exr"
            }
        },
        "ImageMatching_1": {
            "nodeType": "ImageMatching",
            "position": [
                400,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 43,
                "split": 1
            },
            "uids": {
                "0": "bf7df7302516789d2202da115bf265f00489d215"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_1.input}",
                "featuresFolders": [
                    "{FeatureExtraction_1.output}"
                ],
                "method": "SequentialAndVocabularyTree",
                "tree": "${ALICEVISION_VOCTREE}",
                "weights": "",
                "minNbImages": 200,
                "maxDescriptors": 500,
                "nbMatches": 40,
                "nbNeighbors": 5,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/imageMatches.txt"
            }
        },
        "FeatureExtraction_1": {
            "nodeType": "FeatureExtraction",
            "position": [
                200,
                0
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 43,
                "split": 2
            },
            "uids": {
                "0": "9e3f06b8d480ba039ddb2af2be3e4f7efb297366"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_1.output}",
                "masksFolder": "",
                "maskExtension": "png",
                "maskInvert": false,
                "describerTypes": [
                    "dspsift"
                ],
                "describerPreset": "normal",
                "maxNbFeatures": 0,
                "describerQuality": "normal",
                "contrastFiltering": "GridSort",
                "relativePeakThreshold": 0.01,
                "gridFiltering": true,
                "workingColorSpace": "sRGB",
                "forceCpuExtraction": true,
                "maxThreads": 0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "StructureFromMotion_1": {
            "nodeType": "StructureFromMotion",
            "position": [
                800,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 43,
                "split": 1
            },
            "uids": {
                "0": "0488a5ef1a293135c31926da3f7cc46131610509"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_1.input}",
                "featuresFolders": "{FeatureMatching_1.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_1.output}"
                ],
                "describerTypes": "{FeatureMatching_1.describerTypes}",
                "localizerEstimator": "acransac",
                "observationConstraint": "Scale",
                "localizerEstimatorMaxIterations": 4096,
                "localizerEstimatorError": 0.0,
                "lockScenePreviouslyReconstructed": false,
                "useLocalBA": true,
                "localBAGraphDistance": 1,
                "nbFirstUnstableCameras": 30,
                "maxImagesPerGroup": 30,
                "bundleAdjustmentMaxOutliers": 50,
                "maxNumberOfMatches": 0,
                "minNumberOfMatches": 0,
                "minInputTrackLength": 2,
                "minNumberOfObservationsForTriangulation": 2,
                "minAngleForTriangulation": 3.0,
                "minAngleForLandmark": 2.0,
                "maxReprojectionError": 4.0,
                "minAngleInitialPair": 5.0,
                "maxAngleInitialPair": 40.0,
                "useOnlyMatchesFromInputFolder": false,
                "useRigConstraint": true,
                "rigMinNbCamerasForCalibration": 20,
                "lockAllIntrinsics": false,
                "minNbCamerasToRefinePrincipalPoint": 3,
                "filterTrackForks": false,
                "computeStructureColor": true,
                "useAutoTransform": true,
                "initialPairA": "",
                "initialPairB": "",
                "interFileExtension": ".abc",
                "logIntermediateSteps": false,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/sfm.abc",
                "outputViewsAndPoses": "{cache}/{nodeType}/{uid0}/cameras.sfm",
                "extraInfoFolder": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "PrepareDenseScene_1": {
            "nodeType": "PrepareDenseScene",
            "position": [
                1000,
                0
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 43,
                "split": 2
            },
            "uids": {
                "0": "06968a067cd160a4b61943aa9ecddb3b65e4a3a7"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_1.output}",
                "imagesFolders": [],
                "masksFolders": [],
                "maskExtension": "png",
                "outputFileType": "exr",
                "saveMetadata": true,
                "saveMatricesTxtFiles": false,
                "evCorrection": false,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "undistorted": "{cache}/{nodeType}/{uid0}/<VIEW_ID>.{outputFileTypeValue}"
            }
        },
        "CameraInit_1": {
            "nodeType": "CameraInit",
            "position": [
                0,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 43,
                "split": 1
            },
            "uids": {
                "0": "d87890f71f0a4dc9baf7553b626416713878cf16"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "viewpoints": [
                    {
                        "viewId": 46572390,
                        "poseId": 46572390,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195200058.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:52:00\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"1.12\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:52:00\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:52:00\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"327\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.56\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"058\", \"Exif:SubsecTimeDigitized\": \"058\", \"Exif:SubsecTimeOriginal\": \"058\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.021264\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"60\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"44992\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"2373D544B9AEBB8901FE3260215E9E8C\"}"
                    },
                    {
                        "viewId": 57775815,
                        "poseId": 57775815,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195217857.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:52:17\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"1.45\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:52:17\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:52:17\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"307\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.79\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"857\", \"Exif:SubsecTimeDigitized\": \"857\", \"Exif:SubsecTimeOriginal\": \"857\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.01805\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"260\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"14168\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"28CA803BE84216F6962E4A6F2AF06602\"}"
                    },
                    {
                        "viewId": 74376587,
                        "poseId": 74376587,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195144744.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:51:44\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"0.77\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:51:44\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:51:44\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"489\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.79\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"744\", \"Exif:SubsecTimeDigitized\": \"744\", \"Exif:SubsecTimeOriginal\": \"744\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.018134\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"121\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"97115\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"1BD300474591318C70C2C7314F3758B8\"}"
                    },
                    {
                        "viewId": 81728519,
                        "poseId": 81728519,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195336303.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:53:36\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"0.82\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:53:36\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:53:36\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"389\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.51\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"303\", \"Exif:SubsecTimeDigitized\": \"303\", \"Exif:SubsecTimeOriginal\": \"303\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.021968\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"42\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"82874\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"BFB281F1A97655D07F02737322EC5065\"}"
                    },
                    {
                        "viewId": 93882285,
                        "poseId": 93882285,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195252920.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:52:52\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"1.63\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:52:52\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:52:52\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"348\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"6.16\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"920\", \"Exif:SubsecTimeDigitized\": \"920\", \"Exif:SubsecTimeOriginal\": \"920\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.014022\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"345\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"82720\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"37EEF76783E9335429A5F25C702FC411\"}"
                    },
                    {
                        "viewId": 152192614,
                        "poseId": 152192614,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195348274.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:53:48\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"2.8\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:53:48\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:53:48\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"150\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"6.11\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"274\", \"Exif:SubsecTimeDigitized\": \"274\", \"Exif:SubsecTimeOriginal\": \"274\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.014522\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"182\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"58917\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"5CCDD5A0C73897CCDEB3D2EA4ECF335E\"}"
                    },
                    {
                        "viewId": 228160186,
                        "poseId": 228160186,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195240829.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:52:40\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"0.67\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:52:40\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:52:40\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"554\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.86\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"829\", \"Exif:SubsecTimeDigitized\": \"829\", \"Exif:SubsecTimeOriginal\": \"829\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.01717\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"129\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"101589\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"3255B258335E3A1CB0F20D683172C208\"}"
                    },
                    {
                        "viewId": 335920609,
                        "poseId": 335920609,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195202437.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:52:02\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"0.37\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:52:02\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:52:02\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"555\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.57\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"437\", \"Exif:SubsecTimeDigitized\": \"437\", \"Exif:SubsecTimeOriginal\": \"437\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.021116\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"62\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"9816\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"BF1437C58FF1FF03C405A15005546939\"}"
                    },
                    {
                        "viewId": 338216097,
                        "poseId": 338216097,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195235176.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:52:35\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"0.75\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:52:35\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:52:35\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"436\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.6\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"176\", \"Exif:SubsecTimeDigitized\": \"176\", \"Exif:SubsecTimeOriginal\": \"176\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.020606\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"252\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"119500\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"519C51984112702A7CB90350B3D4CFC9\"}"
                    },
                    {
                        "viewId": 353968296,
                        "poseId": 353968296,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195207961.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:52:07\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"1.1\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:52:07\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:52:07\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"424\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.91\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"961\", \"Exif:SubsecTimeDigitized\": \"961\", \"Exif:SubsecTimeOriginal\": \"961\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.016633\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"57\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"101587\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"BA0F9DB2E5EC86CCA44536878B927FC8\"}"
                    },
                    {
                        "viewId": 412208606,
                        "poseId": 412208606,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195249062.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:52:49\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"0.64\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:52:49\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:52:49\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"512\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.72\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"062\", \"Exif:SubsecTimeDigitized\": \"062\", \"Exif:SubsecTimeOriginal\": \"062\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.018986\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"332\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"76747\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"7AE5C0270116D990628326CC36E81ED0\"}"
                    },
                    {
                        "viewId": 424212747,
                        "poseId": 424212747,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195354209.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:53:54\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"2.14\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:53:54\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:53:54\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"171\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.64\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"209\", \"Exif:SubsecTimeDigitized\": \"209\", \"Exif:SubsecTimeOriginal\": \"209\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.020115\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"358\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"59203\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"53B25EF0878715E6EB06D3DA1FD7AA5C\"}"
                    },
                    {
                        "viewId": 427510747,
                        "poseId": 427510747,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195148934.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:51:48\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"1.96\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:51:48\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:51:48\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"223\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.84\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"934\", \"Exif:SubsecTimeDigitized\": \"934\", \"Exif:SubsecTimeOriginal\": \"934\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.017411\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"135\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"27650\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"9A893ED30691F594382C1EB22130C696\"}"
                    },
                    {
                        "viewId": 525294816,
                        "poseId": 525294816,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195322420.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:53:22\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"0.27\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:53:22\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:53:22\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"536\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.42\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"420\", \"Exif:SubsecTimeDigitized\": \"420\", \"Exif:SubsecTimeOriginal\": \"420\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.023348\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"41\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"48613\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"74320B8E5ACF4A166E8E0FB82EFBCFE9\"}"
                    },
                    {
                        "viewId": 588046558,
                        "poseId": 588046558,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195220801.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:52:20\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"1.32\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:52:20\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:52:20\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"347\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.84\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"801\", \"Exif:SubsecTimeDigitized\": \"801\", \"Exif:SubsecTimeOriginal\": \"801\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.017513\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"274\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"92821\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"26473D60230B720265BDD6BB6BE9E585\"}"
                    },
                    {
                        "viewId": 672596288,
                        "poseId": 672596288,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195246467.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:52:46\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"0.24\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:52:46\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:52:46\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"544\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.41\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"467\", \"Exif:SubsecTimeDigitized\": \"467\", \"Exif:SubsecTimeOriginal\": \"467\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.023588\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"253\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"94935\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"355D71D7D0B97339D2B11DD218F3AD6C\"}"
                    },
                    {
                        "viewId": 760814658,
                        "poseId": 760814658,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195210006.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:52:10\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"1.1\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:52:10\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:52:10\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"311\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.46\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"006\", \"Exif:SubsecTimeDigitized\": \"006\", \"Exif:SubsecTimeOriginal\": \"006\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.022727\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"58\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"107758\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"A2B19B070B7652584E7CAFDB74DC0961\"}"
                    },
                    {
                        "viewId": 799264821,
                        "poseId": 799264821,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195351598.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:53:51\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"2.17\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:53:51\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:53:51\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"198\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.88\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"598\", \"Exif:SubsecTimeDigitized\": \"598\", \"Exif:SubsecTimeOriginal\": \"598\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.017004\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"153\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"71593\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"B594ABBD877F1CB0EC62EE69278A2A7D\"}"
                    },
                    {
                        "viewId": 942990969,
                        "poseId": 942990969,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195243424.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:52:43\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"0.38\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:52:43\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:52:43\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"756\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"6.02\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"424\", \"Exif:SubsecTimeDigitized\": \"424\", \"Exif:SubsecTimeOriginal\": \"424\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.015411\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"125\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"9816\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"E48D2E170918D755D6244944C7F1DCE9\"}"
                    },
                    {
                        "viewId": 951704489,
                        "poseId": 951704489,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195232296.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:52:32\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"0.43\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:52:32\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:52:32\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"449\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.32\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"296\", \"Exif:SubsecTimeDigitized\": \"296\", \"Exif:SubsecTimeOriginal\": \"296\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.024959\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"301\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"92088\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"135EC0A7BF3E00B0F0CE716A058F6702\"}"
                    },
                    {
                        "viewId": 998963258,
                        "poseId": 998963258,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195212368.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:52:12\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"1.18\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:52:12\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:52:12\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"364\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.77\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"368\", \"Exif:SubsecTimeDigitized\": \"368\", \"Exif:SubsecTimeOriginal\": \"368\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.018309\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"57\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"72951\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"817D1338645554CF9A8225747F59F126\"}"
                    },
                    {
                        "viewId": 1069394301,
                        "poseId": 1069394301,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195357134.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:53:57\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"1.18\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:53:57\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:53:57\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"281\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.39\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"134\", \"Exif:SubsecTimeDigitized\": \"134\", \"Exif:SubsecTimeOriginal\": \"134\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.023792\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"343\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"57864\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"EAF064B883148BD69816EB15F6DB5568\"}"
                    },
                    {
                        "viewId": 1083886527,
                        "poseId": 1083886527,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195214963.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:52:14\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"1.11\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:52:14\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:52:14\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"361\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.69\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"963\", \"Exif:SubsecTimeDigitized\": \"963\", \"Exif:SubsecTimeOriginal\": \"963\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.019375\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"8\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"109898\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"F4C29125303E241D858079794F644A68\"}"
                    },
                    {
                        "viewId": 1174120125,
                        "poseId": 1174120125,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195155601.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:51:55\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"1.14\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:51:55\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:51:55\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"341\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.63\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"601\", \"Exif:SubsecTimeDigitized\": \"601\", \"Exif:SubsecTimeOriginal\": \"601\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.02018\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"196\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"96359\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"1C5DDE8FC431939AE474684643EC0689\"}"
                    },
                    {
                        "viewId": 1198587478,
                        "poseId": 1198587478,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195157815.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:51:57\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"1.16\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:51:57\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:51:57\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"403\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.89\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"815\", \"Exif:SubsecTimeDigitized\": \"815\", \"Exif:SubsecTimeOriginal\": \"815\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.016818\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"65\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"64263\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"F487EBE16B674E7A52375C3233A0DE34\"}"
                    },
                    {
                        "viewId": 1237833113,
                        "poseId": 1237833113,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195229484.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:52:29\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"0.04\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:52:29\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:52:29\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"607\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.37\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"484\", \"Exif:SubsecTimeDigitized\": \"484\", \"Exif:SubsecTimeOriginal\": \"484\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.024227\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"309\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"9816\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"2836016D2B5F3CA30F49F70FD0732345\"}"
                    },
                    {
                        "viewId": 1257573178,
                        "poseId": 1257573178,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195408736.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:54:08\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"0.7\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:54:08\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:54:08\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"431\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.53\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"736\", \"Exif:SubsecTimeDigitized\": \"736\", \"Exif:SubsecTimeOriginal\": \"736\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.021634\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"204\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"9816\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"8FB3DD224E067FCBE33B4B79C7359EC0\"}"
                    },
                    {
                        "viewId": 1266589780,
                        "poseId": 1266589780,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195332679.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:53:32\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"1.15\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:53:32\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:53:32\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"289\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.4\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"679\", \"Exif:SubsecTimeDigitized\": \"679\", \"Exif:SubsecTimeOriginal\": \"679\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.023625\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"225\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"51439\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"54455B50DD2273D487024C8B2910278D\"}"
                    },
                    {
                        "viewId": 1333439675,
                        "poseId": 1333439675,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195310516.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:53:10\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"0.55\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:53:10\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:53:10\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"485\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.55\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"516\", \"Exif:SubsecTimeDigitized\": \"516\", \"Exif:SubsecTimeOriginal\": \"516\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.02131\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"285\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"44482\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"E59EEC7B608EBD0E734298C55D4F58FE\"}"
                    },
                    {
                        "viewId": 1580992183,
                        "poseId": 1580992183,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195259456.jpg",
                        "intrinsicId": 995611528,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:52:59\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"1.59\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:52:59\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:52:59\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"402\", \"Exif:PixelXDimension\": \"4080\", \"Exif:PixelYDimension\": \"3072\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"6.32\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"456\", \"Exif:SubsecTimeDigitized\": \"456\", \"Exif:SubsecTimeOriginal\": \"456\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.01254\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"348\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"82175\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"2589D3E0C29BA7559101709337C736D1\"}"
                    },
                    {
                        "viewId": 1697550926,
                        "poseId": 1697550926,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195153108.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:51:53\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"1.02\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:51:53\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:51:53\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"441\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.88\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"108\", \"Exif:SubsecTimeDigitized\": \"108\", \"Exif:SubsecTimeOriginal\": \"108\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.016957\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"228\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"84692\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"00E5F8369DDA2708DAA2474AA1051B05\"}"
                    },
                    {
                        "viewId": 1723987419,
                        "poseId": 1723987419,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195341908.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:53:41\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"2.76\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:53:41\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:53:41\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"125\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.8\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"908\", \"Exif:SubsecTimeDigitized\": \"908\", \"Exif:SubsecTimeOriginal\": \"908\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.017921\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"77\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"28858\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"EC597793010F6DBC4EC71D43FAC2EEDA\"}"
                    },
                    {
                        "viewId": 1739833749,
                        "poseId": 1739833749,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195146822.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:51:46\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"1.14\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:51:46\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:51:46\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"357\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.7\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"822\", \"Exif:SubsecTimeDigitized\": \"822\", \"Exif:SubsecTimeOriginal\": \"822\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.019245\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"111\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"77752\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"A85E4B1877B217A5E38DDC0B94773DBC\"}"
                    },
                    {
                        "viewId": 1798875624,
                        "poseId": 1798875624,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195205049.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:52:05\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"0.13\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:52:05\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:52:05\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"770\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.8\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"049\", \"Exif:SubsecTimeDigitized\": \"049\", \"Exif:SubsecTimeOriginal\": \"049\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.017911\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"65\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"9816\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"23D8711614662B71636068FA38F73F07\"}"
                    },
                    {
                        "viewId": 1811534171,
                        "poseId": 1811534171,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195329488.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:53:29\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"1.06\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:53:29\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:53:29\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"455\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.98\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"488\", \"Exif:SubsecTimeDigitized\": \"488\", \"Exif:SubsecTimeOriginal\": \"488\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.015892\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"207\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"50932\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"E207A2ED2B96EEAA8F78E3C97A530AAD\"}"
                    },
                    {
                        "viewId": 1871852315,
                        "poseId": 1871852315,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195223514.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:52:23\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"1.11\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:52:23\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:52:23\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"367\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.71\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"514\", \"Exif:SubsecTimeDigitized\": \"514\", \"Exif:SubsecTimeOriginal\": \"514\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.019134\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"285\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"39192\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"B45A613A0BA8BA261EEEE6A2997B5D17\"}"
                    },
                    {
                        "viewId": 1920661372,
                        "poseId": 1920661372,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195303682.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:53:03\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"0.38\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:53:03\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:53:03\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"519\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.48\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"682\", \"Exif:SubsecTimeDigitized\": \"682\", \"Exif:SubsecTimeOriginal\": \"682\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.022403\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"309\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"59699\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"2E731470CF669598170EBA50E989191B\"}"
                    },
                    {
                        "viewId": 1939605568,
                        "poseId": 1939605568,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195313578.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:53:13\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"0.79\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:53:13\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:53:13\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"555\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.98\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"578\", \"Exif:SubsecTimeDigitized\": \"578\", \"Exif:SubsecTimeOriginal\": \"578\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.01579\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"193\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"122779\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"C4505BD571DA23408571C51FB1795540\"}"
                    },
                    {
                        "viewId": 1954884321,
                        "poseId": 1954884321,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195400973.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:54:00\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"0.41\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:54:00\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:54:00\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"613\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.75\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"973\", \"Exif:SubsecTimeDigitized\": \"973\", \"Exif:SubsecTimeOriginal\": \"973\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.01855\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"324\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"38376\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"22CA831F3C91EB3FDC148B253B312CA3\"}"
                    },
                    {
                        "viewId": 1961096607,
                        "poseId": 1961096607,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195226657.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:52:26\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"0.49\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:52:26\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:52:26\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"487\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.5\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"657\", \"Exif:SubsecTimeDigitized\": \"657\", \"Exif:SubsecTimeOriginal\": \"657\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.022171\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"286\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"68776\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"3284704A3A29952ED0B7799A7491A4AD\"}"
                    },
                    {
                        "viewId": 2026759902,
                        "poseId": 2026759902,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195150883.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:51:50\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"0.93\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:51:50\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:51:50\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"485\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.93\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"883\", \"Exif:SubsecTimeDigitized\": \"883\", \"Exif:SubsecTimeOriginal\": \"883\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.016374\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"255\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"94013\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"732F60759E15BCC04933392B23D74B78\"}"
                    },
                    {
                        "viewId": 2063694637,
                        "poseId": 2063694637,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195316667.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:53:16\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"1.05\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:53:16\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:53:16\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"487\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"6.06\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"667\", \"Exif:SubsecTimeDigitized\": \"667\", \"Exif:SubsecTimeOriginal\": \"667\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.015031\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"123\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"136451\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"AC500864F1B539BE8B2B3850F78CADCD\"}"
                    },
                    {
                        "viewId": 2073945311,
                        "poseId": 2073945311,
                        "path": "/home/me/Cozy Drive/Porte_formation/Photos-001/PXL_20240730_195238117.jpg",
                        "intrinsicId": 916668437,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"9.790000\", \"DateTime\": \"2024:07:30 21:52:38\", \"Exif:ApertureValue\": \"2.28\", \"Exif:BrightnessValue\": \"0.81\", \"Exif:ColorSpace\": \"1\", \"Exif:Contrast\": \"0\", \"Exif:CustomRendered\": \"1\", \"Exif:DateTimeDigitized\": \"2024:07:30 21:52:38\", \"Exif:DateTimeOriginal\": \"2024:07:30 21:52:38\", \"Exif:DigitalZoomRatio\": \"0\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"9\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"2.35\", \"Exif:FocalLengthIn35mmFilm\": \"16\", \"Exif:LensMake\": \"Google\", \"Exif:LensModel\": \"Pixel 6 back camera 2.35mm f/2.2\", \"Exif:MaxApertureValue\": \"2.28\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeDigitized\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"402\", \"Exif:PixelXDimension\": \"3072\", \"Exif:PixelYDimension\": \"4080\", \"Exif:Saturation\": \"0\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:Sharpness\": \"0\", \"Exif:ShutterSpeedValue\": \"5.54\", \"Exif:SubjectDistance\": \"4.29497e+09\", \"Exif:SubjectDistanceRange\": \"3\", \"Exif:SubsecTime\": \"117\", \"Exif:SubsecTimeDigitized\": \"117\", \"Exif:SubsecTimeOriginal\": \"117\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.021505\", \"FNumber\": \"2.2\", \"GPS:Altitude\": \"195.4\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2024:07:30\", \"GPS:ImgDirection\": \"130\", \"GPS:ImgDirectionRef\": \"M\", \"GPS:Latitude\": \"43, 36, 6.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"1, 26, 34.14\", \"GPS:LongitudeRef\": \"E\", \"GPS:TimeStamp\": \"19, 51, 34\", \"GPS:VersionID\": \"2, 2, 0, 0\", \"ICCProfile\": \"0, 0, 2, 84, 0, 0, 0, 0, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 231, 0, 3, 0, 9, 0, 10, 0, 57, 0, 0, 97, 99, 115, 112, 0, 0, 0, 0, 0, 0, 0, 0, 71, 79, 79, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [596 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"0\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright (c) 2023 Google Inc.\", \"ICCProfile:creation_date\": \"2023:03:09 10:57:00\", \"ICCProfile:creator_signature\": \"474f4f47\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"474f4f47\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"sRGB IEC61966-2.1\", \"ICCProfile:profile_size\": \"596\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Item:Length\": \"114331\", \"Item:Mime\": \"image/jpeg\", \"Item:Semantic\": \"Primary; GainMap\", \"Make\": \"Google\", \"Model\": \"Pixel 6\", \"Orientation\": \"1\", \"ResolutionUnit\": \"none\", \"Software\": \"HDR+ 1.0.641377693zd\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"hdrgm:Version\": \"1\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\", \"rdf:parseType\": \"Resource\", \"xmpNote:HasExtendedXMP\": \"D9D594245D1E7253D272C46690A2C97F\"}"
                    }
                ],
                "intrinsics": [
                    {
                        "intrinsicId": 916668437,
                        "initialFocalLength": 3.12109375,
                        "focalLength": 3.12109375,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 3072,
                        "height": 4080,
                        "sensorWidth": 9.79,
                        "sensorHeight": 7.371294117647058,
                        "serialNumber": "/home/me/Cozy Drive/Porte_formation/Photos-001_Google_Pixel 6",
                        "principalPoint": {
                            "x": 0.0,
                            "y": 0.0
                        },
                        "initializationMode": "estimated",
                        "distortionInitializationMode": "none",
                        "distortionParams": [
                            0.0,
                            0.0,
                            0.0
                        ],
                        "undistortionOffset": {
                            "x": 0.0,
                            "y": 0.0
                        },
                        "undistortionParams": [],
                        "locked": false
                    },
                    {
                        "intrinsicId": 995611528,
                        "initialFocalLength": 2.35,
                        "focalLength": 2.35,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 4080,
                        "height": 3072,
                        "sensorWidth": 9.79,
                        "sensorHeight": 7.371294117647058,
                        "serialNumber": "/home/me/Cozy Drive/Porte_formation/Photos-001_Google_Pixel 6",
                        "principalPoint": {
                            "x": 0.0,
                            "y": 0.0
                        },
                        "initializationMode": "estimated",
                        "distortionInitializationMode": "none",
                        "distortionParams": [
                            0.0,
                            0.0,
                            0.0
                        ],
                        "undistortionOffset": {
                            "x": 0.0,
                            "y": 0.0
                        },
                        "undistortionParams": [],
                        "locked": false
                    }
                ],
                "sensorDatabase": "${ALICEVISION_SENSOR_DB}",
                "lensCorrectionProfileInfo": "${ALICEVISION_LENS_PROFILE_INFO}",
                "lensCorrectionProfileSearchIgnoreCameraModel": true,
                "defaultFieldOfView": 45.0,
                "groupCameraFallback": "folder",
                "allowedCameraModels": [
                    "pinhole",
                    "radial1",
                    "radial3",
                    "brown",
                    "fisheye4",
                    "fisheye1",
                    "3deanamorphic4",
                    "3deradial4",
                    "3declassicld"
                ],
                "rawColorInterpretation": "LibRawWhiteBalancing",
                "colorProfileDatabase": "${ALICEVISION_COLOR_PROFILE_DB}",
                "errorOnMissingColorProfile": true,
                "viewIdMethod": "metadata",
                "viewIdRegex": ".*?(\\d+)",
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/cameraInit.sfm"
            }
        },
        "DepthMap_1": {
            "nodeType": "DepthMap",
            "position": [
                1200,
                0
            ],
            "parallelization": {
                "blockSize": 12,
                "size": 43,
                "split": 4
            },
            "uids": {
                "0": "5f4a85fb84650c3aa58bb2ae0f3cdab42e836ebb"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{PrepareDenseScene_1.input}",
                "imagesFolder": "{PrepareDenseScene_1.output}",
                "downscale": 2,
                "minViewAngle": 2.0,
                "maxViewAngle": 70.0,
                "tiling": {
                    "tileBufferWidth": 1024,
                    "tileBufferHeight": 1024,
                    "tilePadding": 64,
                    "autoAdjustSmallImage": true
                },
                "chooseTCamsPerTile": true,
                "maxTCams": 10,
                "sgm": {
                    "sgmScale": 2,
                    "sgmStepXY": 2,
                    "sgmStepZ": -1,
                    "sgmMaxTCamsPerTile": 4,
                    "sgmWSH": 4,
                    "sgmUseSfmSeeds": true,
                    "sgmSeedsRangeInflate": 0.2,
                    "sgmDepthThicknessInflate": 0.0,
                    "sgmMaxSimilarity": 1.0,
                    "sgmGammaC": 5.5,
                    "sgmGammaP": 8.0,
                    "sgmP1": 10.0,
                    "sgmP2Weighting": 100.0,
                    "sgmMaxDepths": 1500,
                    "sgmFilteringAxes": "YX",
                    "sgmDepthListPerTile": true,
                    "sgmUseConsistentScale": false
                },
                "refine": {
                    "refineEnabled": true,
                    "refineScale": 1,
                    "refineStepXY": 1,
                    "refineMaxTCamsPerTile": 4,
                    "refineSubsampling": 10,
                    "refineHalfNbDepths": 15,
                    "refineWSH": 3,
                    "refineSigma": 15.0,
                    "refineGammaC": 15.5,
                    "refineGammaP": 8.0,
                    "refineInterpolateMiddleDepth": false,
                    "refineUseConsistentScale": false
                },
                "colorOptimization": {
                    "colorOptimizationEnabled": true,
                    "colorOptimizationNbIterations": 100
                },
                "customPatchPattern": {
                    "sgmUseCustomPatchPattern": false,
                    "refineUseCustomPatchPattern": false,
                    "customPatchPatternSubparts": [],
                    "customPatchPatternGroupSubpartsPerLevel": false
                },
                "intermediateResults": {
                    "exportIntermediateDepthSimMaps": false,
                    "exportIntermediateNormalMaps": false,
                    "exportIntermediateVolumes": false,
                    "exportIntermediateCrossVolumes": false,
                    "exportIntermediateTopographicCutVolumes": false,
                    "exportIntermediateVolume9pCsv": false,
                    "exportTilePattern": false
                },
                "nbGPUs": 0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "depth": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap.exr",
                "sim": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_simMap.exr",
                "tilePattern": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_tilePattern.obj",
                "depthSgm": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap_sgm.exr",
                "depthSgmUpscaled": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap_sgmUpscaled.exr",
                "depthRefined": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap_refinedFused.exr"
            }
        },
        "MeshFiltering_1": {
            "nodeType": "MeshFiltering",
            "position": [
                1800,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "017ff5908597b60f724bbf4411437824e8ace221"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "inputMesh": "{Meshing_1.outputMesh}",
                "outputMeshFileType": "obj",
                "keepLargestMeshOnly": false,
                "smoothingSubset": "all",
                "smoothingBoundariesNeighbours": 0,
                "smoothingIterations": 5,
                "smoothingLambda": 1.0,
                "filteringSubset": "all",
                "filteringIterations": 1,
                "filterLargeTrianglesFactor": 60.0,
                "filterTrianglesRatio": 0.0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "outputMesh": "{cache}/{nodeType}/{uid0}/mesh.{outputMeshFileTypeValue}"
            }
        },
        "FeatureMatching_1": {
            "nodeType": "FeatureMatching",
            "position": [
                600,
                0
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 43,
                "split": 3
            },
            "uids": {
                "0": "f5a32ed814acebd64a3a42ae9f2d6bce49542ef0"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_1.input}",
                "featuresFolders": "{ImageMatching_1.featuresFolders}",
                "imagePairsList": "{ImageMatching_1.output}",
                "describerTypes": "{FeatureExtraction_1.describerTypes}",
                "photometricMatchingMethod": "ANN_L2",
                "geometricEstimator": "acransac",
                "geometricFilterType": "fundamental_matrix",
                "distanceRatio": 0.8,
                "maxIteration": 2048,
                "geometricError": 0.0,
                "knownPosesGeometricErrorMax": 5.0,
                "minRequired2DMotion": -1.0,
                "maxMatches": 0,
                "savePutativeMatches": false,
                "crossMatching": false,
                "guidedMatching": false,
                "matchFromKnownCameraPoses": false,
                "exportDebugFiles": false,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/"
            }
        }
    }
}