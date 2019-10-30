.class Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView$YearAdapter;
.super Landroid/widget/ArrayAdapter;
.source "YearPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "YearAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;


# direct methods
.method public constructor <init>(Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView$YearAdapter;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;

    .line 123
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 124
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 129
    .line 130
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;

    .line 131
    .local v1, "view":Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;
    invoke-virtual {v1}, Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;->requestLayout()V

    .line 132
    iget-object v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView$YearAdapter;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;

    invoke-static {v3, v1}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->access$000(Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;Landroid/widget/TextView;)I

    move-result v2

    .line 135
    .local v2, "year":I
    iget-object v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView$YearAdapter;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;

    invoke-static {v3}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->access$100(Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;->setCircleColor(I)V

    .line 136
    iget-object v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView$YearAdapter;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;

    invoke-static {v3}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->access$200(Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;->setTextColor(I)V

    .line 137
    iget-object v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView$YearAdapter;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;

    invoke-static {v3}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->access$300(Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;)Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;

    move-result-object v3

    invoke-interface {v3}, Lcom/codetroopers/betterpickers/calendardatepicker/CalendarDatePickerController;->getSelectedDay()Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;

    move-result-object v3

    iget v3, v3, Lcom/codetroopers/betterpickers/calendardatepicker/MonthAdapter$CalendarDay;->year:I

    if-ne v3, v2, :cond_1

    const/4 v0, 0x1

    .line 138
    .local v0, "selected":Z
    :goto_0
    invoke-virtual {v1, v0}, Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;->drawIndicator(Z)V

    .line 139
    if-eqz v0, :cond_0

    .line 140
    iget-object v3, p0, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView$YearAdapter;->this$0:Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;

    invoke-static {v3, v1}, Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;->access$402(Lcom/codetroopers/betterpickers/calendardatepicker/YearPickerView;Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;)Lcom/codetroopers/betterpickers/calendardatepicker/TextViewWithCircularIndicator;

    .line 142
    :cond_0
    return-object v1

    .line 137
    .end local v0    # "selected":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
