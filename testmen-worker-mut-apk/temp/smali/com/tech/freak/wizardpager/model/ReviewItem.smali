.class public Lcom/tech/freak/wizardpager/model/ReviewItem;
.super Ljava/lang/Object;
.source "ReviewItem.java"


# static fields
.field public static final DEFAULT_WEIGHT:I


# instance fields
.field private mDisplayValue:Ljava/lang/String;

.field private mPageKey:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mWeight:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "displayValue"    # Ljava/lang/String;
    .param p3, "pageKey"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tech/freak/wizardpager/model/ReviewItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "displayValue"    # Ljava/lang/String;
    .param p3, "pageKey"    # Ljava/lang/String;
    .param p4, "weight"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/tech/freak/wizardpager/model/ReviewItem;->mTitle:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/tech/freak/wizardpager/model/ReviewItem;->mDisplayValue:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/tech/freak/wizardpager/model/ReviewItem;->mPageKey:Ljava/lang/String;

    .line 40
    iput p4, p0, Lcom/tech/freak/wizardpager/model/ReviewItem;->mWeight:I

    .line 41
    return-void
.end method


# virtual methods
.method public getDisplayValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tech/freak/wizardpager/model/ReviewItem;->mDisplayValue:Ljava/lang/String;

    return-object v0
.end method

.method public getPageKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tech/freak/wizardpager/model/ReviewItem;->mPageKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tech/freak/wizardpager/model/ReviewItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/tech/freak/wizardpager/model/ReviewItem;->mWeight:I

    return v0
.end method

.method public setDisplayValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayValue"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/tech/freak/wizardpager/model/ReviewItem;->mDisplayValue:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setPageKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageKey"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/tech/freak/wizardpager/model/ReviewItem;->mPageKey:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/tech/freak/wizardpager/model/ReviewItem;->mTitle:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setWeight(I)V
    .locals 0
    .param p1, "weight"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/tech/freak/wizardpager/model/ReviewItem;->mWeight:I

    .line 73
    return-void
.end method
