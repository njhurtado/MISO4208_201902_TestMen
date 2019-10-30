.class Lcom/tech/freak/wizardpager/model/BranchPage$Branch;
.super Ljava/lang/Object;
.source "BranchPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tech/freak/wizardpager/model/BranchPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Branch"
.end annotation


# instance fields
.field public childPageList:Lcom/tech/freak/wizardpager/model/PageList;

.field public choice:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/tech/freak/wizardpager/model/PageList;)V
    .locals 0
    .param p1, "choice"    # Ljava/lang/String;
    .param p2, "childPageList"    # Lcom/tech/freak/wizardpager/model/PageList;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/tech/freak/wizardpager/model/BranchPage$Branch;->choice:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lcom/tech/freak/wizardpager/model/BranchPage$Branch;->childPageList:Lcom/tech/freak/wizardpager/model/PageList;

    .line 114
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/tech/freak/wizardpager/model/PageList;Lcom/tech/freak/wizardpager/model/BranchPage$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/tech/freak/wizardpager/model/PageList;
    .param p3, "x2"    # Lcom/tech/freak/wizardpager/model/BranchPage$1;

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/tech/freak/wizardpager/model/BranchPage$Branch;-><init>(Ljava/lang/String;Lcom/tech/freak/wizardpager/model/PageList;)V

    return-void
.end method
