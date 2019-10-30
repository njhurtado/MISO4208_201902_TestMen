.class Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$2$1;
.super Ljava/lang/Object;
.source "BookManagerFragment.java"

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$2;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$2;)V
    .locals 0
    .param p1, "this$2"    # Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$2;

    .prologue
    .line 194
    iput-object p1, p0, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$2$1;->this$2:Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 197
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 206
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 199
    :pswitch_0
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$2$1;->this$2:Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$2;

    iget-object v0, v0, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$2;->this$1:Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;

    iget-object v1, p0, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$2$1;->this$2:Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$2;

    iget-object v1, v1, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$2;->val$bookName:Ljava/lang/String;

    iget-object v2, p0, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$2$1;->this$2:Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$2;

    iget-object v2, v2, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$2;->val$bookUID:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;->access$000(Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 202
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 204
    :pswitch_2
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$2$1;->this$2:Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$2;

    iget-object v0, v0, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$2;->this$1:Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;

    iget-object v1, p0, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$2$1;->this$2:Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$2;

    iget-object v1, v1, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$2;->val$bookUID:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;->access$100(Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x7f090076
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
