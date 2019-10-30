.class Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$2;
.super Ljava/lang/Object;
.source "OwnCloudDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    .prologue
    .line 232
    iput-object p1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$2;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 236
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$2;->this$0:Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    invoke-virtual {v0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->dismiss()V

    .line 237
    return-void
.end method
