.class public abstract Lorg/gnucash/android/model/BaseModel;
.super Ljava/lang/Object;
.source "BaseModel.java"


# instance fields
.field protected mCreatedTimestamp:Ljava/sql/Timestamp;

.field protected mModifiedTimestamp:Ljava/sql/Timestamp;

.field private mUID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lorg/gnucash/android/util/TimestampHelper;->getTimestampFromNow()Ljava/sql/Timestamp;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/model/BaseModel;->mCreatedTimestamp:Ljava/sql/Timestamp;

    .line 46
    invoke-static {}, Lorg/gnucash/android/util/TimestampHelper;->getTimestampFromNow()Ljava/sql/Timestamp;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/model/BaseModel;->mModifiedTimestamp:Ljava/sql/Timestamp;

    .line 47
    return-void
.end method

.method public static generateUID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 120
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    .line 125
    :goto_0
    return v1

    .line 121
    :cond_0
    instance-of v1, p1, Lorg/gnucash/android/model/BaseModel;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 123
    check-cast v0, Lorg/gnucash/android/model/BaseModel;

    .line 125
    .local v0, "baseModel":Lorg/gnucash/android/model/BaseModel;
    invoke-virtual {p0}, Lorg/gnucash/android/model/BaseModel;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/gnucash/android/model/BaseModel;->getUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getCreatedTimestamp()Ljava/sql/Timestamp;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/gnucash/android/model/BaseModel;->mCreatedTimestamp:Ljava/sql/Timestamp;

    return-object v0
.end method

.method public getModifiedTimestamp()Ljava/sql/Timestamp;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/gnucash/android/model/BaseModel;->mModifiedTimestamp:Ljava/sql/Timestamp;

    return-object v0
.end method

.method public getUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/gnucash/android/model/BaseModel;->mUID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 64
    invoke-static {}, Lorg/gnucash/android/model/BaseModel;->generateUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/model/BaseModel;->mUID:Ljava/lang/String;

    .line 66
    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/model/BaseModel;->mUID:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lorg/gnucash/android/model/BaseModel;->getUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setCreatedTimestamp(Ljava/sql/Timestamp;)V
    .locals 0
    .param p1, "createdTimestamp"    # Ljava/sql/Timestamp;

    .prologue
    .line 91
    iput-object p1, p0, Lorg/gnucash/android/model/BaseModel;->mCreatedTimestamp:Ljava/sql/Timestamp;

    .line 92
    return-void
.end method

.method public setModifiedTimestamp(Ljava/sql/Timestamp;)V
    .locals 0
    .param p1, "modifiedTimestamp"    # Ljava/sql/Timestamp;

    .prologue
    .line 110
    iput-object p1, p0, Lorg/gnucash/android/model/BaseModel;->mModifiedTimestamp:Ljava/sql/Timestamp;

    .line 111
    return-void
.end method

.method public setUID(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lorg/gnucash/android/model/BaseModel;->mUID:Ljava/lang/String;

    .line 76
    return-void
.end method
