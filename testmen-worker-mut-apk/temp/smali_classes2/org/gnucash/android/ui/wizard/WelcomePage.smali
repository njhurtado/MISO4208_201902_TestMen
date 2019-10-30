.class public Lorg/gnucash/android/ui/wizard/WelcomePage;
.super Lcom/tech/freak/wizardpager/model/Page;
.source "WelcomePage.java"


# direct methods
.method protected constructor <init>(Lcom/tech/freak/wizardpager/model/ModelCallbacks;Ljava/lang/String;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/tech/freak/wizardpager/model/ModelCallbacks;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/tech/freak/wizardpager/model/Page;-><init>(Lcom/tech/freak/wizardpager/model/ModelCallbacks;Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public createFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lorg/gnucash/android/ui/wizard/WelcomePageFragment;

    invoke-direct {v0}, Lorg/gnucash/android/ui/wizard/WelcomePageFragment;-><init>()V

    return-object v0
.end method

.method public getReviewItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tech/freak/wizardpager/model/ReviewItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tech/freak/wizardpager/model/ReviewItem;>;"
    return-void
.end method
