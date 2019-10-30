.class public Lcom/dropbox/core/v2/files/VideoMetadata;
.super Lcom/dropbox/core/v2/files/MediaMetadata;
.source "VideoMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/VideoMetadata$Serializer;,
        Lcom/dropbox/core/v2/files/VideoMetadata$Builder;
    }
.end annotation


# instance fields
.field protected final duration:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/dropbox/core/v2/files/VideoMetadata;-><init>(Lcom/dropbox/core/v2/files/Dimensions;Lcom/dropbox/core/v2/files/GpsCoordinates;Ljava/util/Date;Ljava/lang/Long;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/files/Dimensions;Lcom/dropbox/core/v2/files/GpsCoordinates;Ljava/util/Date;Ljava/lang/Long;)V
    .locals 0
    .param p1, "dimensions"    # Lcom/dropbox/core/v2/files/Dimensions;
    .param p2, "location"    # Lcom/dropbox/core/v2/files/GpsCoordinates;
    .param p3, "timeTaken"    # Ljava/util/Date;
    .param p4, "duration"    # Ljava/lang/Long;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/MediaMetadata;-><init>(Lcom/dropbox/core/v2/files/Dimensions;Lcom/dropbox/core/v2/files/GpsCoordinates;Ljava/util/Date;)V

    .line 41
    iput-object p4, p0, Lcom/dropbox/core/v2/files/VideoMetadata;->duration:Ljava/lang/Long;

    .line 42
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/files/VideoMetadata$Builder;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/dropbox/core/v2/files/VideoMetadata$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/VideoMetadata$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 179
    if-ne p1, p0, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v1

    .line 183
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, p1

    .line 184
    check-cast v0, Lcom/dropbox/core/v2/files/VideoMetadata;

    .line 185
    .local v0, "other":Lcom/dropbox/core/v2/files/VideoMetadata;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/VideoMetadata;->dimensions:Lcom/dropbox/core/v2/files/Dimensions;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/VideoMetadata;->dimensions:Lcom/dropbox/core/v2/files/Dimensions;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/VideoMetadata;->dimensions:Lcom/dropbox/core/v2/files/Dimensions;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/files/VideoMetadata;->dimensions:Lcom/dropbox/core/v2/files/Dimensions;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/VideoMetadata;->dimensions:Lcom/dropbox/core/v2/files/Dimensions;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/Dimensions;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/files/VideoMetadata;->location:Lcom/dropbox/core/v2/files/GpsCoordinates;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/VideoMetadata;->location:Lcom/dropbox/core/v2/files/GpsCoordinates;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/files/VideoMetadata;->location:Lcom/dropbox/core/v2/files/GpsCoordinates;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/files/VideoMetadata;->location:Lcom/dropbox/core/v2/files/GpsCoordinates;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/VideoMetadata;->location:Lcom/dropbox/core/v2/files/GpsCoordinates;

    .line 186
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/GpsCoordinates;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/files/VideoMetadata;->timeTaken:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/VideoMetadata;->timeTaken:Ljava/util/Date;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/files/VideoMetadata;->timeTaken:Ljava/util/Date;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/files/VideoMetadata;->timeTaken:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/VideoMetadata;->timeTaken:Ljava/util/Date;

    .line 187
    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/files/VideoMetadata;->duration:Ljava/lang/Long;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/VideoMetadata;->duration:Ljava/lang/Long;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/VideoMetadata;->duration:Ljava/lang/Long;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/files/VideoMetadata;->duration:Ljava/lang/Long;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/VideoMetadata;->duration:Ljava/lang/Long;

    .line 188
    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/files/VideoMetadata;
    :cond_6
    move v1, v2

    .line 192
    goto :goto_0
.end method

.method public getDimensions()Lcom/dropbox/core/v2/files/Dimensions;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dropbox/core/v2/files/VideoMetadata;->dimensions:Lcom/dropbox/core/v2/files/Dimensions;

    return-object v0
.end method

.method public getDuration()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dropbox/core/v2/files/VideoMetadata;->duration:Ljava/lang/Long;

    return-object v0
.end method

.method public getLocation()Lcom/dropbox/core/v2/files/GpsCoordinates;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dropbox/core/v2/files/VideoMetadata;->location:Lcom/dropbox/core/v2/files/GpsCoordinates;

    return-object v0
.end method

.method public getTimeTaken()Ljava/util/Date;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dropbox/core/v2/files/VideoMetadata;->timeTaken:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 170
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/VideoMetadata;->duration:Ljava/lang/Long;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 173
    .local v0, "hash":I
    invoke-super {p0}, Lcom/dropbox/core/v2/files/MediaMetadata;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 174
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    sget-object v0, Lcom/dropbox/core/v2/files/VideoMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/VideoMetadata$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/VideoMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    sget-object v0, Lcom/dropbox/core/v2/files/VideoMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/VideoMetadata$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/VideoMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
