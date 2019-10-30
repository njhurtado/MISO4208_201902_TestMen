.class Lcom/tech/freak/wizardpager/ui/TextFragment$1;
.super Ljava/lang/Object;
.source "TextFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tech/freak/wizardpager/ui/TextFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tech/freak/wizardpager/ui/TextFragment;


# direct methods
.method constructor <init>(Lcom/tech/freak/wizardpager/ui/TextFragment;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/tech/freak/wizardpager/ui/TextFragment$1;->this$0:Lcom/tech/freak/wizardpager/ui/TextFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/TextFragment$1;->this$0:Lcom/tech/freak/wizardpager/ui/TextFragment;

    invoke-static {v0}, Lcom/tech/freak/wizardpager/ui/TextFragment;->access$000(Lcom/tech/freak/wizardpager/ui/TextFragment;)Lcom/tech/freak/wizardpager/model/Page;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tech/freak/wizardpager/model/Page;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "_"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/TextFragment$1;->this$0:Lcom/tech/freak/wizardpager/ui/TextFragment;

    invoke-static {v0}, Lcom/tech/freak/wizardpager/ui/TextFragment;->access$000(Lcom/tech/freak/wizardpager/ui/TextFragment;)Lcom/tech/freak/wizardpager/model/Page;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tech/freak/wizardpager/model/Page;->notifyDataChanged()V

    .line 99
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 86
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 91
    return-void
.end method
