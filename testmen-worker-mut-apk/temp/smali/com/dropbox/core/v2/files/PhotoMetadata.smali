.class public Lcom/dropbox/core/v2/files/PhotoMetadata;
.super Lcom/dropbox/core/v2/files/MediaMetadata;
.source "PhotoMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/PhotoMetadata$Serializer;,
        Lcom/dropbox/core/v2/files/PhotoMetadata$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, v0, v0, v0}, Lcom/dropbox/core/v2/files/PhotoMetadata;-><init>(Lcom/dropbox/core/v2/files/Dimensions;Lcom/dropbox/core/v2/files/GpsCoordinates;Ljava/util/Date;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/files/Dimensions;Lcom/dropbox/core/v2/files/GpsCoordinates;Ljava/util/Date;)V
    .locals 0
    .param p1, "dimensions"    # Lcom/dropbox/core/v2/files/Dimensions;
    .param p2, "location"    # Lcom/dropbox/core/v2/files/GpsCoordinates;
    .param p3, "timeTaken"    # Ljava/util/Date;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/MediaMetadata;-><init>(Lcom/dropbox/core/v2/files/Dimensions;Lcom/dropbox/core/v2/files/GpsCoordinates;Ljava/util/Date;)V

    .line 38
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/files/PhotoMetadata$Builder;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/dropbox/core/v2/files/PhotoMetadata$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/PhotoMetadata$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 148
    if-ne p1, p0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v1

    .line 152
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 153
    check-cast v0, Lcom/dropbox/core/v2/files/PhotoMetadata;

    .line 154
    .local v0, "other":Lcom/dropbox/core/v2/files/PhotoMetadata;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/PhotoMetadata;->dimensions:Lcom/dropbox/core/v2/files/Dimensions;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/PhotoMetadata;->dimensions:Lcom/dropbox/core/v2/files/Dimensions;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/PhotoMetadata;->dimensions:Lcom/dropbox/core/v2/files/Dimensions;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/files/PhotoMetadata;->dimensions:Lcom/dropbox/core/v2/files/Dimensions;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/PhotoMetadata;->dimensions:Lcom/dropbox/core/v2/files/Dimensions;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/Dimensions;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/files/PhotoMetadata;->location:Lcom/dropbox/core/v2/files/GpsCoordinates;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/PhotoMetadata;->location:Lcom/dropbox/core/v2/files/GpsCoordinates;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/files/PhotoMetadata;->location:Lcom/dropbox/core/v2/files/GpsCoordinates;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/files/PhotoMetadata;->location:Lcom/dropbox/core/v2/files/GpsCoordinates;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/PhotoMetadata;->location:Lcom/dropbox/core/v2/files/GpsCoordinates;

    .line 155
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/GpsCoordinates;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/files/PhotoMetadata;->timeTaken:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/PhotoMetadata;->timeTaken:Ljava/util/Date;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/PhotoMetadata;->timeTaken:Ljava/util/Date;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/files/PhotoMetadata;->timeTaken:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/PhotoMetadata;->timeTaken:Ljava/util/Date;

    .line 156
    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/files/PhotoMetadata;
    :cond_5
    move v1, v2

    .line 160
    goto :goto_0
.end method

.method public getDimensions()Lcom/dropbox/core/v2/files/Dimensions;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dropbox/core/v2/files/PhotoMetadata;->dimensions:Lcom/dropbox/core/v2/files/Dimensions;

    return-object v0
.end method

.method public getLocation()Lcom/dropbox/core/v2/files/GpsCoordinates;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dropbox/core/v2/files/PhotoMetadata;->location:Lcom/dropbox/core/v2/files/GpsCoordinates;

    return-object v0
.end method

.method public getTimeTaken()Ljava/util/Date;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dropbox/core/v2/files/PhotoMetadata;->timeTaken:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    sget-object v0, Lcom/dropbox/core/v2/files/PhotoMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/PhotoMetadata$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/PhotoMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    sget-object v0, Lcom/dropbox/core/v2/files/PhotoMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/PhotoMetadata$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/PhotoMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
