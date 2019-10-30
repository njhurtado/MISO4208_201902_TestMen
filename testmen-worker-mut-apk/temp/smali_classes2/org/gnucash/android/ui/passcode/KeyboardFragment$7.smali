.class Lorg/gnucash/android/ui/passcode/KeyboardFragment$7;
.super Ljava/lang/Object;
.source "KeyboardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/passcode/KeyboardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/passcode/KeyboardFragment;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/passcode/KeyboardFragment;

    .prologue
    .line 97
    iput-object p1, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment$7;->this$0:Lorg/gnucash/android/ui/passcode/KeyboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 100
    iget-object v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment$7;->this$0:Lorg/gnucash/android/ui/passcode/KeyboardFragment;

    const-string v1, "7"

    invoke-static {v0, v1}, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->access$000(Lorg/gnucash/android/ui/passcode/KeyboardFragment;Ljava/lang/String;)V

    .line 101
    return-void
.end method
