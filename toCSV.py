import pandas as pd

data = pd.read_csv("C:\\Users\\adunderdale\Downloads\\breast+cancer+wisconsin+diagnostic\\wdbc.data")

data.columns = ["UID", "Diagnosis", "meanRadius", "meanTexture", "meanPerimeter", "meanArea", "meanSmoothness", "meanCompactness", "meanConcavity", "meanConcavePoints", "meanSymmetry", "meanFractalDimension", 
    "radiusSE", "textureSE", "perimeterSE", "areaSE", "smoothnessSE", "compactnessSE", "concavitySE", "concavePointsSE", "symmetrySE", "fractalDimensionSE", 
    "worstRadius", "worstTexture", "worstPerimeter", "worstArea", "worstSmoothness", "worstCompactness", "worstConcavity", "worstConcavePoints", "worstSymmetry", "worstFractalDimension"]

data.to_csv("data.csv", index=None, header=True)