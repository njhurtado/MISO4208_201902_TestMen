.class Lorg/gnucash/android/ui/report/ReportsActivity$2;
.super Ljava/lang/Object;
.source "ReportsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/report/ReportsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/report/ReportsActivity;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/report/ReportsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/report/ReportsActivity;

    .prologue
    .line 145
    iput-object p1, p0, Lorg/gnucash/android/ui/report/ReportsActivity$2;->this$0:Lorg/gnucash/android/ui/report/ReportsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 151
    iget-object v0, p0, Lorg/gnucash/android/ui/report/ReportsActivity$2;->this$0:Lorg/gnucash/android/ui/report/ReportsActivity;

    sget-object v1, Lorg/gnucash/android/model/AccountType;->EXPENSE:Lorg/gnucash/android/model/AccountType;

    invoke-static {v0, v1}, Lorg/gnucash/android/ui/report/ReportsActivity;->access$302(Lorg/gnucash/android/ui/report/ReportsActivity;Lorg/gnucash/android/model/AccountType;)Lorg/gnucash/android/model/AccountType;

    .line 156
    :goto_0
    iget-object v0, p0, Lorg/gnucash/android/ui/report/ReportsActivity$2;->this$0:Lorg/gnucash/android/ui/report/ReportsActivity;

    invoke-static {v0}, Lorg/gnucash/android/ui/report/ReportsActivity;->access$400(Lorg/gnucash/android/ui/report/ReportsActivity;)V

    .line 157
    return-void

    .line 154
    :pswitch_0
    iget-object v0, p0, Lorg/gnucash/android/ui/report/ReportsActivity$2;->this$0:Lorg/gnucash/android/ui/report/ReportsActivity;

    sget-object v1, Lorg/gnucash/android/model/AccountType;->INCOME:Lorg/gnucash/android/model/AccountType;

    invoke-static {v0, v1}, Lorg/gnucash/android/ui/report/ReportsActivity;->access$302(Lorg/gnucash/android/ui/report/ReportsActivity;Lorg/gnucash/android/model/AccountType;)Lorg/gnucash/android/model/AccountType;

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
