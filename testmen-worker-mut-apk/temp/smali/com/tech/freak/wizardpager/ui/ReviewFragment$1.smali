.class Lcom/tech/freak/wizardpager/ui/ReviewFragment$1;
.super Ljava/lang/Object;
.source "ReviewFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tech/freak/wizardpager/ui/ReviewFragment;->onPageDataChanged(Lcom/tech/freak/wizardpager/model/Page;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/tech/freak/wizardpager/model/ReviewItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tech/freak/wizardpager/ui/ReviewFragment;


# direct methods
.method constructor <init>(Lcom/tech/freak/wizardpager/ui/ReviewFragment;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/tech/freak/wizardpager/ui/ReviewFragment$1;->this$0:Lcom/tech/freak/wizardpager/ui/ReviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/tech/freak/wizardpager/model/ReviewItem;Lcom/tech/freak/wizardpager/model/ReviewItem;)I
    .locals 2
    .param p1, "a"    # Lcom/tech/freak/wizardpager/model/ReviewItem;
    .param p2, "b"    # Lcom/tech/freak/wizardpager/model/ReviewItem;

    .prologue
    .line 108
    invoke-virtual {p1}, Lcom/tech/freak/wizardpager/model/ReviewItem;->getWeight()I

    move-result v0

    invoke-virtual {p2}, Lcom/tech/freak/wizardpager/model/ReviewItem;->getWeight()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/tech/freak/wizardpager/model/ReviewItem;->getWeight()I

    move-result v0

    invoke-virtual {p2}, Lcom/tech/freak/wizardpager/model/ReviewItem;->getWeight()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 105
    check-cast p1, Lcom/tech/freak/wizardpager/model/ReviewItem;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/tech/freak/wizardpager/model/ReviewItem;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/tech/freak/wizardpager/ui/ReviewFragment$1;->compare(Lcom/tech/freak/wizardpager/model/ReviewItem;Lcom/tech/freak/wizardpager/model/ReviewItem;)I

    move-result v0

    return v0
.end method
