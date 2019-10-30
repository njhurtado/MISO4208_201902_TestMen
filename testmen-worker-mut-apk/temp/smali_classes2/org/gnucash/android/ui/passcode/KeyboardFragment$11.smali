.class Lorg/gnucash/android/ui/passcode/KeyboardFragment$11;
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
    .line 121
    iput-object p1, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment$11;->this$0:Lorg/gnucash/android/ui/passcode/KeyboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment$11;->this$0:Lorg/gnucash/android/ui/passcode/KeyboardFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->access$100(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 141
    :goto_0
    return-void

    .line 126
    :pswitch_0
    iget-object v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment$11;->this$0:Lorg/gnucash/android/ui/passcode/KeyboardFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->access$200(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment$11;->this$0:Lorg/gnucash/android/ui/passcode/KeyboardFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->access$110(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)I

    goto :goto_0

    .line 130
    :pswitch_1
    iget-object v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment$11;->this$0:Lorg/gnucash/android/ui/passcode/KeyboardFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->access$300(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment$11;->this$0:Lorg/gnucash/android/ui/passcode/KeyboardFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->access$110(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)I

    goto :goto_0

    .line 134
    :pswitch_2
    iget-object v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment$11;->this$0:Lorg/gnucash/android/ui/passcode/KeyboardFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->access$400(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment$11;->this$0:Lorg/gnucash/android/ui/passcode/KeyboardFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->access$110(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)I

    goto :goto_0

    .line 138
    :pswitch_3
    iget-object v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment$11;->this$0:Lorg/gnucash/android/ui/passcode/KeyboardFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->access$500(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lorg/gnucash/android/ui/passcode/KeyboardFragment$11;->this$0:Lorg/gnucash/android/ui/passcode/KeyboardFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/passcode/KeyboardFragment;->access$110(Lorg/gnucash/android/ui/passcode/KeyboardFragment;)I

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
