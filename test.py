import pandas as pd

def main():

    data = pd.read_csv("data.csv")
    data.drop(['UID'], inplace=True, axis=1)
    data['Diagnosis'] = data["Diagnosis"].map(returnDiagnosis)
    
    print(data.head());

    #with open(r"C:\\Users\\adunderdale\Downloads\\breast+cancer+wisconsin+diagnostic\\wdbc.data", "r") as file:
        #for line in file:
            #parseLine(line.strip())

def returnDiagnosis(val):
    if val == "M":
        return 1
    
    else: return 0

def parseLine(line):
    data = line.split(',')
    
    uid, diagnosis, *features = data
    
    meanRadius, meanTexture, meanPerimeter, meanArea, meanSmoothness, meanCompactness, meanConcavity, meanConcavePoints, meanSymmetry, meanFractalDimension, \
    radiusSE, textureSE, perimeterSE, areaSE, smoothnessSE, compactnessSE, concavitySE, concavePointsSE, symmetrySE, fractalDimensionSE, \
    worstRadius, worstTexture, worstPerimeter, worstArea, worstSmoothness, worstCompactness, worstConcavity, worstConcavePoints, worstSymmetry, worstFractalDimension = features


if __name__ == "__main__":
    main()
