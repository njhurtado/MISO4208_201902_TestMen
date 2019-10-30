.class public Lorg/gnucash/android/model/Book;
.super Lorg/gnucash/android/model/BaseModel;
.source "Book.java"


# instance fields
.field private mActive:Z

.field private mDisplayName:Ljava/lang/String;

.field private mLastSync:Ljava/sql/Timestamp;

.field private mRootAccountUID:Ljava/lang/String;

.field private mRootTemplateUID:Ljava/lang/String;

.field private mSourceUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/gnucash/android/model/BaseModel;-><init>()V

    .line 41
    invoke-direct {p0}, Lorg/gnucash/android/model/Book;->init()V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "rootAccountUID"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/gnucash/android/model/BaseModel;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/gnucash/android/model/Book;->mRootAccountUID:Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Lorg/gnucash/android/model/Book;->init()V

    .line 51
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 57
    invoke-static {}, Lorg/gnucash/android/model/Book;->generateUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/model/Book;->mRootTemplateUID:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    iput-object v0, p0, Lorg/gnucash/android/model/Book;->mLastSync:Ljava/sql/Timestamp;

    .line 59
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/gnucash/android/model/Book;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastSync()Ljava/sql/Timestamp;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/gnucash/android/model/Book;->mLastSync:Ljava/sql/Timestamp;

    return-object v0
.end method

.method public getRootAccountUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/gnucash/android/model/Book;->mRootAccountUID:Ljava/lang/String;

    return-object v0
.end method

.method public getRootTemplateUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/gnucash/android/model/Book;->mRootTemplateUID:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/gnucash/android/model/Book;->mSourceUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lorg/gnucash/android/model/Book;->mActive:Z

    return v0
.end method

.method public setActive(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lorg/gnucash/android/model/Book;->mActive:Z

    .line 109
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lorg/gnucash/android/model/Book;->mDisplayName:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setLastSync(Ljava/sql/Timestamp;)V
    .locals 0
    .param p1, "lastSync"    # Ljava/sql/Timestamp;

    .prologue
    .line 161
    iput-object p1, p0, Lorg/gnucash/android/model/Book;->mLastSync:Ljava/sql/Timestamp;

    .line 162
    return-void
.end method

.method public setRootAccountUID(Ljava/lang/String;)V
    .locals 0
    .param p1, "rootAccountUID"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lorg/gnucash/android/model/Book;->mRootAccountUID:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setRootTemplateUID(Ljava/lang/String;)V
    .locals 0
    .param p1, "rootTemplateUID"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lorg/gnucash/android/model/Book;->mRootTemplateUID:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setSourceUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/gnucash/android/model/Book;->mSourceUri:Landroid/net/Uri;

    .line 128
    return-void
.end method
