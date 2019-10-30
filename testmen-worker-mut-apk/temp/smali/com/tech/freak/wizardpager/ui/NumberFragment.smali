.class public Lcom/tech/freak/wizardpager/ui/NumberFragment;
.super Lcom/tech/freak/wizardpager/ui/TextFragment;
.source "NumberFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tech/freak/wizardpager/ui/TextFragment;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/tech/freak/wizardpager/ui/NumberFragment;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 10
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v1, Lcom/tech/freak/wizardpager/ui/NumberFragment;

    invoke-direct {v1}, Lcom/tech/freak/wizardpager/ui/NumberFragment;-><init>()V

    .line 14
    .local v1, "f":Lcom/tech/freak/wizardpager/ui/NumberFragment;
    invoke-virtual {v1, v0}, Lcom/tech/freak/wizardpager/ui/NumberFragment;->setArguments(Landroid/os/Bundle;)V

    .line 15
    return-object v1
.end method


# virtual methods
.method protected setInputType()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 22
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/NumberFragment;->mEditTextInput:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 27
    :goto_0
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/NumberFragment;->mEditTextInput:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method
