.class Lcom/tech/freak/wizardpager/ui/ImageFragment$1$1;
.super Landroid/support/v4/app/DialogFragment;
.source "ImageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tech/freak/wizardpager/ui/ImageFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tech/freak/wizardpager/ui/ImageFragment$1;


# direct methods
.method constructor <init>(Lcom/tech/freak/wizardpager/ui/ImageFragment$1;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/tech/freak/wizardpager/ui/ImageFragment$1$1;->this$1:Lcom/tech/freak/wizardpager/ui/ImageFragment$1;

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/ImageFragment$1$1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 100
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/tech/freak/wizardpager/R$array;->image_photo_sources:I

    new-instance v2, Lcom/tech/freak/wizardpager/ui/ImageFragment$1$1$1;

    invoke-direct {v2, p0}, Lcom/tech/freak/wizardpager/ui/ImageFragment$1$1$1;-><init>(Lcom/tech/freak/wizardpager/ui/ImageFragment$1$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 141
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
