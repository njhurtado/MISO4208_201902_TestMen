.class Lcom/tech/freak/wizardpager/ui/ImageFragment$1;
.super Ljava/lang/Object;
.source "ImageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tech/freak/wizardpager/ui/ImageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tech/freak/wizardpager/ui/ImageFragment;


# direct methods
.method constructor <init>(Lcom/tech/freak/wizardpager/ui/ImageFragment;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment$1;->this$0:Lcom/tech/freak/wizardpager/ui/ImageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    new-instance v0, Lcom/tech/freak/wizardpager/ui/ImageFragment$1$1;

    invoke-direct {v0, p0}, Lcom/tech/freak/wizardpager/ui/ImageFragment$1$1;-><init>(Lcom/tech/freak/wizardpager/ui/ImageFragment$1;)V

    .line 145
    .local v0, "pickPhotoSourceDialog":Landroid/support/v4/app/DialogFragment;
    iget-object v1, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment$1;->this$0:Lcom/tech/freak/wizardpager/ui/ImageFragment;

    invoke-virtual {v1}, Lcom/tech/freak/wizardpager/ui/ImageFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "pickPhotoSourceDialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 147
    return-void
.end method
