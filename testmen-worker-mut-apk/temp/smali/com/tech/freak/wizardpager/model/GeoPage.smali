.class public Lcom/tech/freak/wizardpager/model/GeoPage;
.super Lcom/tech/freak/wizardpager/model/TextPage;
.source "GeoPage.java"


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
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/model/GeoPage;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tech/freak/wizardpager/ui/GeoFragment;->create(Ljava/lang/String;)Lcom/tech/freak/wizardpager/ui/GeoFragment;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)Lcom/tech/freak/wizardpager/model/GeoPage;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/tech/freak/wizardpager/model/GeoPage;->mData:Landroid/os/Bundle;

    const-string v1, "_"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-object p0
.end method

.method public bridge synthetic setValue(Ljava/lang/String;)Lcom/tech/freak/wizardpager/model/TextPage;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/tech/freak/wizardpager/model/GeoPage;->setValue(Ljava/lang/String;)Lcom/tech/freak/wizardpager/model/GeoPage;

    move-result-object v0

    return-object v0
.end method
