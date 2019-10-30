.class public Lcom/tech/freak/wizardpager/model/NumberPage;
.super Lcom/tech/freak/wizardpager/model/TextPage;
.source "NumberPage.java"


# direct methods
.method public constructor <init>(Lcom/tech/freak/wizardpager/model/ModelCallbacks;Ljava/lang/String;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/tech/freak/wizardpager/model/ModelCallbacks;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/tech/freak/wizardpager/model/TextPage;-><init>(Lcom/tech/freak/wizardpager/model/ModelCallbacks;Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public createFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/model/NumberPage;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tech/freak/wizardpager/ui/NumberFragment;->create(Ljava/lang/String;)Lcom/tech/freak/wizardpager/ui/NumberFragment;

    move-result-object v0

    return-object v0
.end method
