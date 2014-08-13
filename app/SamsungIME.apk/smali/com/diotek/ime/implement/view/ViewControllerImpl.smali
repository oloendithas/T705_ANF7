.class public Lcom/diotek/ime/implement/view/ViewControllerImpl;
.super Lcom/diotek/ime/framework/view/AbstractViewController;
.source "ViewControllerImpl.java"


# instance fields
.field private ADD_SMILEY_SYMBOL:Z

.field private IS_FHD:Z

.field private IS_HD:Z

.field private IS_HVGA:Z

.field private IS_QHD:Z

.field private IS_WQXGA:Z

.field private IS_WVGA:Z

.field private USE_GLOBAL_KEY:Z

.field private USE_SYMBOL_LAYOUT_BY_ATT:Z

.field private USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

.field private mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

.field private mIsCommaKeyAsDefault:Z

.field mIsLandscape:Z

.field private mModeID:I

.field private mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

.field public mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

.field private mToast:Landroid/widget/Toast;

.field private mXmlID:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mToast:Landroid/widget/Toast;

    .line 61
    iput-boolean v0, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsCommaKeyAsDefault:Z

    .line 62
    iput-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    .line 64
    iput v0, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    .line 65
    iput v0, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mModeID:I

    .line 66
    iput-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 67
    iput-boolean v0, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    .line 68
    iput-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 73
    return-void
.end method

.method private getCurrentSymbolPageModeId(I)I
    .locals 13
    .param p1, "pageNum"    # I

    .prologue
    const/16 v12, 0x8

    const/4 v4, 0x0

    const/4 v10, 0x1

    .line 946
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v8

    .line 947
    .local v8, "preference":Landroid/content/SharedPreferences;
    const-string v11, "da_mode"

    invoke-interface {v8, v11, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 949
    .local v2, "isDaMode":Z
    const/4 v7, 0x0

    .line 950
    .local v7, "pageId":I
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v6

    .line 951
    .local v6, "method":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v9

    .line 952
    .local v9, "range":I
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    .line 953
    .local v1, "inputMethod":I
    if-ne v1, v12, :cond_0

    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v11

    if-nez v11, :cond_0

    move v4, v10

    .line 956
    .local v4, "isFloatingQwertyKeyboard":Z
    :cond_0
    iget-boolean v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-nez v11, :cond_1

    if-ne v6, v12, :cond_1

    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v11

    if-nez v11, :cond_1

    .line 961
    const/4 v6, 0x1

    .line 964
    :cond_1
    packed-switch v6, :pswitch_data_0

    .line 1180
    :goto_0
    :pswitch_0
    return v7

    .line 968
    :pswitch_1
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v11

    if-ne v11, v10, :cond_2

    .line 969
    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getValidSymbolsPage(I)I

    move-result p1

    .line 970
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "SYMBOLS_PAGE"

    invoke-interface {v11, v12, p1}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 973
    :cond_2
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletPhoneFlotingCJ()Z

    move-result v11

    if-eqz v11, :cond_a

    :cond_3
    const/4 v11, 0x7

    if-ne v6, v11, :cond_4

    if-eq v9, v10, :cond_a

    :cond_4
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v11

    if-nez v11, :cond_a

    .line 976
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v3

    .line 977
    .local v3, "isEmailMode":Z
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v5

    .line 978
    .local v5, "isUrlMode":Z
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v11

    array-length v11, v11

    if-le v11, v10, :cond_7

    .line 979
    if-eqz v3, :cond_5

    .line 980
    const v7, 0x7f0800df

    goto :goto_0

    .line 981
    :cond_5
    if-eqz v5, :cond_6

    .line 982
    const v7, 0x7f0800de

    goto :goto_0

    .line 984
    :cond_6
    const v7, 0x7f0800da

    goto :goto_0

    .line 987
    :cond_7
    if-eqz v3, :cond_8

    .line 988
    const v7, 0x7f0800dd

    goto :goto_0

    .line 989
    :cond_8
    if-eqz v5, :cond_9

    .line 990
    const v7, 0x7f0800dc

    goto :goto_0

    .line 992
    :cond_9
    const v7, 0x7f0800db

    .line 995
    goto :goto_0

    .line 997
    .end local v3    # "isEmailMode":Z
    .end local v5    # "isUrlMode":Z
    :cond_a
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->isUseGlobalKey()Z

    move-result v11

    if-nez v11, :cond_c

    iget-boolean v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsCommaKeyAsDefault:Z

    if-eqz v11, :cond_c

    if-eqz v1, :cond_b

    if-eqz v4, :cond_c

    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v11

    if-nez v11, :cond_c

    .line 1000
    :cond_b
    packed-switch p1, :pswitch_data_1

    .line 1024
    :try_start_0
    const-string v10, "symbol_page_1_comma"

    invoke-static {v10}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v7

    goto/16 :goto_0

    .line 1003
    :pswitch_2
    :try_start_1
    const-string v10, "symbol_page_1_comma"

    invoke-static {v10}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    goto/16 :goto_0

    .line 1004
    :catch_0
    move-exception v0

    .line 1005
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f0800e3

    .line 1007
    goto/16 :goto_0

    .line 1010
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :pswitch_3
    :try_start_2
    const-string v10, "symbol_page_2_comma"

    invoke-static {v10}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v7

    goto/16 :goto_0

    .line 1011
    :catch_1
    move-exception v0

    .line 1012
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f0800e5

    .line 1014
    goto/16 :goto_0

    .line 1017
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :pswitch_4
    :try_start_3
    const-string v10, "symbol_page_3_comma"

    invoke-static {v10}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v7

    goto/16 :goto_0

    .line 1018
    :catch_2
    move-exception v0

    .line 1019
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f0800e7

    .line 1021
    goto/16 :goto_0

    .line 1025
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :catch_3
    move-exception v0

    .line 1026
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f0800e3

    .line 1028
    goto/16 :goto_0

    .line 1030
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_c
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v11

    array-length v11, v11

    if-le v11, v10, :cond_f

    .line 1031
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->isUseGlobalKey()Z

    move-result v10

    if-nez v10, :cond_d

    iget-boolean v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-eqz v10, :cond_e

    .line 1032
    :cond_d
    packed-switch p1, :pswitch_data_2

    .line 1043
    const v7, 0x7f0800e3

    .line 1044
    goto/16 :goto_0

    .line 1034
    :pswitch_5
    const v7, 0x7f0800e3

    .line 1035
    goto/16 :goto_0

    .line 1037
    :pswitch_6
    const v7, 0x7f0800e5

    .line 1038
    goto/16 :goto_0

    .line 1040
    :pswitch_7
    const v7, 0x7f0800e7

    .line 1041
    goto/16 :goto_0

    .line 1047
    :cond_e
    packed-switch p1, :pswitch_data_3

    .line 1058
    const v7, 0x7f0800e4

    .line 1059
    goto/16 :goto_0

    .line 1049
    :pswitch_8
    const v7, 0x7f0800e4

    .line 1050
    goto/16 :goto_0

    .line 1052
    :pswitch_9
    const v7, 0x7f0800e6

    .line 1053
    goto/16 :goto_0

    .line 1055
    :pswitch_a
    const v7, 0x7f0800e8

    .line 1056
    goto/16 :goto_0

    .line 1063
    :cond_f
    packed-switch p1, :pswitch_data_4

    .line 1074
    const v7, 0x7f0800e4

    .line 1075
    goto/16 :goto_0

    .line 1065
    :pswitch_b
    const v7, 0x7f0800e4

    .line 1066
    goto/16 :goto_0

    .line 1068
    :pswitch_c
    const v7, 0x7f0800e6

    .line 1069
    goto/16 :goto_0

    .line 1071
    :pswitch_d
    const v7, 0x7f0800e8

    .line 1072
    goto/16 :goto_0

    .line 1081
    :pswitch_e
    iget-boolean v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-nez v11, :cond_10

    .line 1082
    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getPhonePadCurrentSymbolPageModeId(I)I

    move-result v7

    goto/16 :goto_0

    .line 1084
    :cond_10
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v11

    if-eqz v11, :cond_16

    .line 1085
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v3

    .line 1086
    .restart local v3    # "isEmailMode":Z
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v5

    .line 1087
    .restart local v5    # "isUrlMode":Z
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v11

    array-length v11, v11

    if-le v11, v10, :cond_13

    .line 1088
    if-eqz v3, :cond_11

    .line 1089
    const v7, 0x7f0800df

    goto/16 :goto_0

    .line 1090
    :cond_11
    if-eqz v5, :cond_12

    .line 1091
    const v7, 0x7f0800de

    goto/16 :goto_0

    .line 1093
    :cond_12
    const v7, 0x7f0800da

    goto/16 :goto_0

    .line 1096
    :cond_13
    if-eqz v3, :cond_14

    .line 1097
    const v7, 0x7f0800dd

    goto/16 :goto_0

    .line 1098
    :cond_14
    if-eqz v5, :cond_15

    .line 1099
    const v7, 0x7f0800dc

    goto/16 :goto_0

    .line 1101
    :cond_15
    const v7, 0x7f0800db

    .line 1104
    goto/16 :goto_0

    .line 1106
    .end local v3    # "isEmailMode":Z
    .end local v5    # "isUrlMode":Z
    :cond_16
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v11

    array-length v11, v11

    if-le v11, v10, :cond_17

    if-nez v2, :cond_17

    .line 1107
    packed-switch p1, :pswitch_data_5

    .line 1121
    const v7, 0x7f0800e3

    .line 1122
    goto/16 :goto_0

    .line 1109
    :pswitch_f
    const v7, 0x7f0800e3

    .line 1110
    goto/16 :goto_0

    .line 1112
    :pswitch_10
    const v7, 0x7f0800e5

    .line 1113
    goto/16 :goto_0

    .line 1115
    :pswitch_11
    const v7, 0x7f0800e7

    .line 1116
    goto/16 :goto_0

    .line 1118
    :pswitch_12
    const v7, 0x7f0800f8

    .line 1119
    goto/16 :goto_0

    .line 1125
    :cond_17
    packed-switch p1, :pswitch_data_6

    .line 1139
    const v7, 0x7f0800e4

    .line 1140
    goto/16 :goto_0

    .line 1127
    :pswitch_13
    const v7, 0x7f0800e4

    .line 1128
    goto/16 :goto_0

    .line 1130
    :pswitch_14
    const v7, 0x7f0800e6

    .line 1131
    goto/16 :goto_0

    .line 1133
    :pswitch_15
    const v7, 0x7f0800e8

    .line 1134
    goto/16 :goto_0

    .line 1136
    :pswitch_16
    const v7, 0x7f0800fb

    .line 1137
    goto/16 :goto_0

    .line 1147
    :pswitch_17
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v11

    array-length v11, v11

    if-le v11, v10, :cond_19

    if-nez v2, :cond_19

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->isUseGlobalKey()Z

    move-result v10

    if-nez v10, :cond_18

    iget-boolean v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-eqz v10, :cond_19

    .line 1148
    :cond_18
    packed-switch p1, :pswitch_data_7

    .line 1159
    const v7, 0x7f0800e3

    .line 1160
    goto/16 :goto_0

    .line 1150
    :pswitch_18
    const v7, 0x7f0800e3

    .line 1151
    goto/16 :goto_0

    .line 1153
    :pswitch_19
    const v7, 0x7f0800e5

    .line 1154
    goto/16 :goto_0

    .line 1156
    :pswitch_1a
    const v7, 0x7f0800e7

    .line 1157
    goto/16 :goto_0

    .line 1163
    :cond_19
    packed-switch p1, :pswitch_data_8

    .line 1174
    const v7, 0x7f0800e4

    goto/16 :goto_0

    .line 1165
    :pswitch_1b
    const v7, 0x7f0800e4

    .line 1166
    goto/16 :goto_0

    .line 1168
    :pswitch_1c
    const v7, 0x7f0800e6

    .line 1169
    goto/16 :goto_0

    .line 1171
    :pswitch_1d
    const v7, 0x7f0800e8

    .line 1172
    goto/16 :goto_0

    .line 964
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_e
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1000
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1032
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 1047
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 1063
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 1107
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch

    .line 1125
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch

    .line 1148
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch

    .line 1163
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method

.method private getEmoticonKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 4

    .prologue
    .line 1882
    const-string v2, "SamsungIME"

    const-string v3, "getEmoticonKeyboard"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 1884
    const/4 v1, 0x0

    .line 1885
    .local v1, "xmlId":I
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 1886
    .local v0, "method":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1887
    const v1, 0x7f0500d9

    .line 1893
    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v3

    if-eq v2, v3, :cond_3

    .line 1895
    :cond_0
    new-instance v2, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 1896
    iget-object v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    .line 1900
    :goto_1
    iget-object v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    return-object v2

    .line 1888
    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1889
    const v1, 0x7f0500dd

    goto :goto_0

    .line 1891
    :cond_2
    const v1, 0x7f050211

    goto :goto_0

    .line 1898
    :cond_3
    iget-object v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iput-object v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_1
.end method

.method private getEmoticonPopupKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 3

    .prologue
    .line 1904
    const-string v1, "SamsungIME"

    const-string v2, "getEmoticonPopupKeyboard"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 1906
    const/4 v0, 0x0

    .line 1907
    .local v0, "xmlId":I
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1908
    const v0, 0x7f05001e

    .line 1912
    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v2

    if-eq v1, v2, :cond_2

    .line 1914
    :cond_0
    new-instance v1, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 1915
    iget-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    .line 1919
    :goto_1
    iget-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    return-object v1

    .line 1910
    :cond_1
    const v0, 0x7f050015

    goto :goto_0

    .line 1917
    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iput-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_1
.end method

.method private getFloatingHWRKeyboardXmlId()I
    .locals 2

    .prologue
    .line 2674
    const/4 v0, 0x0

    .line 2676
    .local v0, "xmlId":I
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2677
    const v0, 0x7f050336

    .line 2682
    :goto_0
    return v0

    .line 2679
    :cond_0
    const v0, 0x7f050002

    goto :goto_0
.end method

.method private getFloatingKeyboardXmlId(I)I
    .locals 16
    .param p1, "language"    # I

    .prologue
    .line 4285
    const/high16 v13, -0x10000

    and-int v8, p1, v13

    .line 4288
    .local v8, "langCode":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    .line 4289
    .local v10, "sLocal":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 4290
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputCountryCode()Ljava/lang/String;

    move-result-object v5

    .line 4291
    .local v5, "inputLanguageLocal":Ljava/lang/String;
    const-string v13, ""

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string v13, "CH"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const v13, 0x66724652

    move/from16 v0, p1

    if-eq v0, v13, :cond_1

    .line 4293
    :cond_0
    move-object v10, v5

    .line 4296
    .end local v5    # "inputLanguageLocal":Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    .line 4298
    .local v9, "locale":Ljava/lang/String;
    const/4 v12, 0x0

    .line 4300
    .local v12, "xmlId":I
    :try_start_0
    const-string v13, "floating_en"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 4305
    :goto_0
    sparse-switch v8, :sswitch_data_0

    .line 4869
    :try_start_1
    const-string v13, "floating_en"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_4a

    move-result v12

    .line 4875
    :cond_2
    :goto_1
    return v12

    .line 4301
    :catch_0
    move-exception v3

    .line 4302
    .local v3, "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050212

    goto :goto_0

    .line 4308
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_0
    :try_start_2
    const-string v13, "floating_hi"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v12

    goto :goto_1

    .line 4309
    :catch_1
    move-exception v3

    .line 4310
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050219

    .line 4312
    goto :goto_1

    .line 4315
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1
    :try_start_3
    const-string v13, "floating_bn"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v12

    goto :goto_1

    .line 4316
    :catch_2
    move-exception v3

    .line 4317
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f05020c

    .line 4319
    goto :goto_1

    .line 4322
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2
    :try_start_4
    const-string v13, "floating_gu"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v12

    goto :goto_1

    .line 4323
    :catch_3
    move-exception v3

    .line 4324
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050217

    .line 4326
    goto :goto_1

    .line 4329
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_3
    :try_start_5
    const-string v13, "floating_kn"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v12

    goto :goto_1

    .line 4330
    :catch_4
    move-exception v3

    .line 4331
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050221

    .line 4333
    goto :goto_1

    .line 4336
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_4
    :try_start_6
    const-string v13, "floating_ml"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    move-result v12

    goto :goto_1

    .line 4337
    :catch_5
    move-exception v3

    .line 4338
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050229

    .line 4340
    goto :goto_1

    .line 4343
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_5
    :try_start_7
    const-string v13, "floating_mr"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    move-result v12

    goto :goto_1

    .line 4344
    :catch_6
    move-exception v3

    .line 4345
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f05022b

    .line 4347
    goto :goto_1

    .line 4350
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_6
    :try_start_8
    const-string v13, "floating_pa"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_7

    move-result v12

    goto :goto_1

    .line 4351
    :catch_7
    move-exception v3

    .line 4352
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f05024b

    .line 4354
    goto :goto_1

    .line 4357
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_7
    :try_start_9
    const-string v13, "floating_si"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_8

    move-result v12

    goto :goto_1

    .line 4358
    :catch_8
    move-exception v3

    .line 4359
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f05024d

    .line 4361
    goto :goto_1

    .line 4364
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_8
    :try_start_a
    const-string v13, "floating_te"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_9

    move-result v12

    goto :goto_1

    .line 4365
    :catch_9
    move-exception v3

    .line 4366
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050251

    .line 4368
    goto :goto_1

    .line 4371
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_9
    :try_start_b
    const-string v13, "floating_ta"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_a

    move-result v12

    goto :goto_1

    .line 4372
    :catch_a
    move-exception v3

    .line 4373
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050250

    .line 4375
    goto :goto_1

    .line 4378
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_a
    :try_start_c
    const-string v13, "floating_as"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_b

    move-result v12

    goto/16 :goto_1

    .line 4379
    :catch_b
    move-exception v3

    .line 4380
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050208

    .line 4382
    goto/16 :goto_1

    .line 4385
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_b
    :try_start_d
    const-string v13, "floating_ne"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_c

    move-result v12

    goto/16 :goto_1

    .line 4386
    :catch_c
    move-exception v3

    .line 4387
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f05022d

    .line 4389
    goto/16 :goto_1

    .line 4392
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_c
    :try_start_e
    const-string v13, "floating_or"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_d

    move-result v12

    goto/16 :goto_1

    .line 4393
    :catch_d
    move-exception v3

    .line 4394
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f05024a

    .line 4396
    goto/16 :goto_1

    .line 4408
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_d
    :try_start_f
    const-string v13, "floating_en"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_f} :catch_e

    move-result v12

    goto/16 :goto_1

    .line 4409
    :catch_e
    move-exception v3

    .line 4410
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050212

    .line 4412
    goto/16 :goto_1

    .line 4415
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_e
    :try_start_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v14, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v11

    .line 4417
    .local v11, "turkishKeyboardType":I
    packed-switch v11, :pswitch_data_0

    .line 4425
    const-string v13, "floating_en"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v12

    goto/16 :goto_1

    .line 4419
    :pswitch_0
    const-string v13, "floating_tr_qwerty"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v12

    .line 4420
    goto/16 :goto_1

    .line 4422
    :pswitch_1
    const-string v13, "floating_tr_f"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_10} :catch_f

    move-result v12

    .line 4423
    goto/16 :goto_1

    .line 4428
    .end local v11    # "turkishKeyboardType":I
    :catch_f
    move-exception v3

    .line 4429
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050212

    .line 4431
    goto/16 :goto_1

    .line 4434
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_f
    :try_start_11
    const-string v13, "floating_sl"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_11} :catch_10

    move-result v12

    goto/16 :goto_1

    .line 4436
    :catch_10
    move-exception v13

    .line 4444
    :sswitch_10
    :try_start_12
    const-string v13, "floating_qwertz"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_12} :catch_11

    move-result v12

    goto/16 :goto_1

    .line 4445
    :catch_11
    move-exception v3

    .line 4446
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050260

    .line 4448
    goto/16 :goto_1

    .line 4450
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_11
    const-string v13, "BE"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 4452
    :try_start_13
    const-string v13, "floating_azerty_fr"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_13} :catch_12

    move-result v12

    goto/16 :goto_1

    .line 4453
    :catch_12
    move-exception v3

    .line 4454
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const/high16 v12, 0x7f050000

    .line 4455
    goto/16 :goto_1

    .line 4458
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    :try_start_14
    const-string v13, "floating_en"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14 .. :try_end_14} :catch_13

    move-result v12

    goto/16 :goto_1

    .line 4459
    :catch_13
    move-exception v3

    .line 4460
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050212

    .line 4463
    goto/16 :goto_1

    .line 4468
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_12
    :try_start_15
    const-string v13, "floating_es"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_15} :catch_14

    move-result v12

    goto/16 :goto_1

    .line 4469
    :catch_14
    move-exception v3

    .line 4470
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050213

    .line 4472
    goto/16 :goto_1

    .line 4474
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_13
    const-string v13, "CH"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 4476
    :try_start_16
    const-string v13, "floating_qwertz"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_16} :catch_15

    move-result v12

    goto/16 :goto_1

    .line 4477
    :catch_15
    move-exception v3

    .line 4478
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050260

    .line 4479
    goto/16 :goto_1

    .line 4482
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_4
    :try_start_17
    const-string v13, "floating_it"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_17} :catch_16

    move-result v12

    goto/16 :goto_1

    .line 4483
    :catch_16
    move-exception v3

    .line 4484
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f05021c

    .line 4487
    goto/16 :goto_1

    .line 4489
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_14
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsKorMode:Z

    if-eqz v13, :cond_a

    .line 4490
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v13}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v7

    .line 4491
    .local v7, "keypadType":I
    const/4 v13, 0x1

    if-ne v7, v13, :cond_5

    .line 4493
    :try_start_18
    const-string v13, "floating_kr_cji"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_18 .. :try_end_18} :catch_17

    move-result v12

    goto/16 :goto_1

    .line 4494
    :catch_17
    move-exception v3

    .line 4495
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050222

    .line 4496
    goto/16 :goto_1

    .line 4497
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_5
    const/4 v13, 0x2

    if-ne v7, v13, :cond_6

    .line 4499
    :try_start_19
    const-string v13, "floating_kr_cji_turbo"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_19 .. :try_end_19} :catch_18

    move-result v12

    goto/16 :goto_1

    .line 4500
    :catch_18
    move-exception v3

    .line 4501
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050222

    .line 4502
    goto/16 :goto_1

    .line 4503
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_6
    const/4 v13, 0x3

    if-ne v7, v13, :cond_7

    .line 4505
    :try_start_1a
    const-string v13, "floating_kr_sky"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1a .. :try_end_1a} :catch_19

    move-result v12

    goto/16 :goto_1

    .line 4506
    :catch_19
    move-exception v3

    .line 4507
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050222

    .line 4508
    goto/16 :goto_1

    .line 4509
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_7
    const/4 v13, 0x4

    if-ne v7, v13, :cond_8

    .line 4511
    :try_start_1b
    const-string v13, "floating_kr_nara"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1b .. :try_end_1b} :catch_1a

    move-result v12

    goto/16 :goto_1

    .line 4512
    :catch_1a
    move-exception v3

    .line 4513
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050222

    .line 4514
    goto/16 :goto_1

    .line 4515
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_8
    if-nez v7, :cond_2

    .line 4516
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v6

    .line 4517
    .local v6, "isPasswordMode":Z
    if-eqz v6, :cond_9

    .line 4519
    :try_start_1c
    const-string v13, "floating_kr_to_en"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1c .. :try_end_1c} :catch_1b

    move-result v12

    goto/16 :goto_1

    .line 4520
    :catch_1b
    move-exception v3

    .line 4521
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050223

    .line 4522
    goto/16 :goto_1

    .line 4525
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_9
    :try_start_1d
    const-string v13, "floating_kr"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1d .. :try_end_1d} :catch_1c

    move-result v12

    goto/16 :goto_1

    .line 4526
    :catch_1c
    move-exception v3

    .line 4527
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050222

    goto/16 :goto_1

    .line 4533
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    .end local v6    # "isPasswordMode":Z
    .end local v7    # "keypadType":I
    :cond_a
    :try_start_1e
    const-string v13, "floating_kr"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1e .. :try_end_1e} :catch_1d

    move-result v12

    goto/16 :goto_1

    .line 4534
    :catch_1d
    move-exception v3

    .line 4535
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050222

    .line 4538
    goto/16 :goto_1

    .line 4542
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_c

    .line 4543
    const v13, 0x66724341

    move/from16 v0, p1

    if-ne v0, v13, :cond_b

    .line 4545
    :try_start_1f
    const-string v13, "floating_en"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1f .. :try_end_1f} :catch_1e

    move-result v12

    goto/16 :goto_1

    .line 4546
    :catch_1e
    move-exception v3

    .line 4547
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050212

    .line 4548
    goto/16 :goto_1

    .line 4551
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_b
    :try_start_20
    const-string v13, "floating_azerty_fr"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_20 .. :try_end_20} :catch_1f

    move-result v12

    goto/16 :goto_1

    .line 4552
    :catch_1f
    move-exception v3

    .line 4553
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const/high16 v12, 0x7f050000

    .line 4554
    goto/16 :goto_1

    .line 4557
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_c
    const-string v13, "CA"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 4559
    :try_start_21
    const-string v13, "floating_en"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_21
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_21 .. :try_end_21} :catch_20

    move-result v12

    goto/16 :goto_1

    .line 4560
    :catch_20
    move-exception v3

    .line 4561
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050212

    .line 4562
    goto/16 :goto_1

    .line 4563
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_d
    const-string v13, "CH"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 4565
    :try_start_22
    const-string v13, "floating_qwertz"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_22
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_22 .. :try_end_22} :catch_21

    move-result v12

    goto/16 :goto_1

    .line 4566
    :catch_21
    move-exception v3

    .line 4567
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050260

    .line 4568
    goto/16 :goto_1

    .line 4571
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_e
    :try_start_23
    const-string v13, "floating_azerty_fr"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_23 .. :try_end_23} :catch_22

    move-result v12

    goto/16 :goto_1

    .line 4572
    :catch_22
    move-exception v3

    .line 4573
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const/high16 v12, 0x7f050000

    .line 4577
    goto/16 :goto_1

    .line 4579
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v14, "SETTINGS_GERMAN_KEYBOARD_TYPE"

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    .line 4581
    .local v4, "germanKeyboardType":I
    packed-switch v4, :pswitch_data_1

    .line 4591
    :try_start_24
    const-string v13, "floating_qwertz_de"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_24 .. :try_end_24} :catch_24

    move-result v12

    goto/16 :goto_1

    .line 4584
    :pswitch_2
    :try_start_25
    const-string v13, "floating_qwertz_de_plus"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_25 .. :try_end_25} :catch_23

    move-result v12

    goto/16 :goto_1

    .line 4585
    :catch_23
    move-exception v3

    .line 4586
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050261

    .line 4588
    goto/16 :goto_1

    .line 4592
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :catch_24
    move-exception v3

    .line 4593
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050261

    .line 4595
    goto/16 :goto_1

    .line 4600
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    .end local v4    # "germanKeyboardType":I
    :sswitch_17
    :try_start_26
    const-string v13, "floating_kk"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_26
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_26 .. :try_end_26} :catch_25

    move-result v12

    goto/16 :goto_1

    .line 4602
    :catch_25
    move-exception v13

    .line 4607
    :sswitch_18
    :try_start_27
    const-string v13, "floating_ru"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_27 .. :try_end_27} :catch_26

    move-result v12

    goto/16 :goto_1

    .line 4608
    :catch_26
    move-exception v3

    .line 4609
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f05024c

    .line 4611
    goto/16 :goto_1

    .line 4614
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_19
    :try_start_28
    const-string v13, "floating_da"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_28 .. :try_end_28} :catch_27

    move-result v12

    goto/16 :goto_1

    .line 4615
    :catch_27
    move-exception v3

    .line 4616
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f05020f

    .line 4618
    goto/16 :goto_1

    .line 4621
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1a
    :try_start_29
    const-string v13, "floating_nb"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_29 .. :try_end_29} :catch_28

    move-result v12

    goto/16 :goto_1

    .line 4622
    :catch_28
    move-exception v3

    .line 4623
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f05022c

    .line 4625
    goto/16 :goto_1

    .line 4629
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1b
    :try_start_2a
    const-string v13, "floating_fi"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2a .. :try_end_2a} :catch_29

    move-result v12

    goto/16 :goto_1

    .line 4630
    :catch_29
    move-exception v3

    .line 4631
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050216

    .line 4633
    goto/16 :goto_1

    .line 4636
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1c
    :try_start_2b
    const-string v13, "floating_uk"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2b .. :try_end_2b} :catch_2a

    move-result v12

    goto/16 :goto_1

    .line 4637
    :catch_2a
    move-exception v3

    .line 4638
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050257

    .line 4640
    goto/16 :goto_1

    .line 4642
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v14, "SETTINGS_BULGARIAN_KEYBOARD_TYPE"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    .line 4643
    .local v1, "bulgarianKeyboardType":I
    packed-switch v1, :pswitch_data_2

    .line 4657
    :try_start_2c
    const-string v13, "floating_bg"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2c .. :try_end_2c} :catch_2d

    move-result v12

    goto/16 :goto_1

    .line 4646
    :pswitch_3
    :try_start_2d
    const-string v13, "floating_bg_phonetic"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2d .. :try_end_2d} :catch_2b

    move-result v12

    goto/16 :goto_1

    .line 4647
    :catch_2b
    move-exception v3

    .line 4649
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :try_start_2e
    const-string v13, "floating_bg"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2e .. :try_end_2e} :catch_2c

    move-result v12

    goto/16 :goto_1

    .line 4650
    :catch_2c
    move-exception v2

    .line 4651
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f05020a

    goto/16 :goto_1

    .line 4658
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :catch_2d
    move-exception v3

    .line 4659
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f05020a

    .line 4661
    goto/16 :goto_1

    .line 4666
    .end local v1    # "bulgarianKeyboardType":I
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1e
    :try_start_2f
    const-string v13, "floating_el"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2f .. :try_end_2f} :catch_2e

    move-result v12

    goto/16 :goto_1

    .line 4667
    :catch_2e
    move-exception v3

    .line 4668
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050210

    .line 4670
    goto/16 :goto_1

    .line 4673
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1f
    :try_start_30
    const-string v13, "floating_lv"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_30
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_30 .. :try_end_30} :catch_2f

    move-result v12

    goto/16 :goto_1

    .line 4674
    :catch_2f
    move-exception v3

    .line 4675
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050227

    .line 4677
    goto/16 :goto_1

    .line 4680
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_20
    :try_start_31
    const-string v13, "floating_ar"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_31
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_31 .. :try_end_31} :catch_30

    move-result v12

    goto/16 :goto_1

    .line 4681
    :catch_30
    move-exception v3

    .line 4682
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050207

    .line 4684
    goto/16 :goto_1

    .line 4687
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_21
    :try_start_32
    const-string v13, "floating_ur"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_32
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_32 .. :try_end_32} :catch_31

    move-result v12

    goto/16 :goto_1

    .line 4688
    :catch_31
    move-exception v3

    .line 4689
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050258

    .line 4691
    goto/16 :goto_1

    .line 4694
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_22
    :try_start_33
    const-string v13, "floating_fa"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_33
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_33 .. :try_end_33} :catch_32

    move-result v12

    goto/16 :goto_1

    .line 4695
    :catch_32
    move-exception v3

    .line 4696
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050215

    .line 4698
    goto/16 :goto_1

    .line 4701
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_23
    :try_start_34
    const-string v13, "floating_he"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_34
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_34 .. :try_end_34} :catch_33

    move-result v12

    goto/16 :goto_1

    .line 4702
    :catch_33
    move-exception v3

    .line 4703
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050218

    .line 4705
    goto/16 :goto_1

    .line 4708
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_24
    :try_start_35
    const-string v13, "floating_th"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_35
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_35 .. :try_end_35} :catch_34

    move-result v12

    goto/16 :goto_1

    .line 4709
    :catch_34
    move-exception v3

    .line 4710
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050253

    .line 4712
    goto/16 :goto_1

    .line 4715
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_25
    :try_start_36
    const-string v13, "floating_vi"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_36
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_36 .. :try_end_36} :catch_35

    move-result v12

    goto/16 :goto_1

    .line 4716
    :catch_35
    move-exception v3

    .line 4717
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f05025a

    .line 4719
    goto/16 :goto_1

    .line 4722
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_26
    :try_start_37
    const-string v13, "floating_az"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_37 .. :try_end_37} :catch_36

    move-result v12

    goto/16 :goto_1

    .line 4723
    :catch_36
    move-exception v3

    .line 4724
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050209

    .line 4726
    goto/16 :goto_1

    .line 4729
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_27
    :try_start_38
    const-string v13, "floating_hy"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_38
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_38 .. :try_end_38} :catch_37

    move-result v12

    goto/16 :goto_1

    .line 4730
    :catch_37
    move-exception v3

    .line 4731
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f05021a

    .line 4733
    goto/16 :goto_1

    .line 4736
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_28
    :try_start_39
    const-string v13, "floating_ka"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_39
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_39 .. :try_end_39} :catch_38

    move-result v12

    goto/16 :goto_1

    .line 4737
    :catch_38
    move-exception v3

    .line 4738
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f05021e

    .line 4740
    goto/16 :goto_1

    .line 4742
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_29
    const v13, 0x7a68484b

    move/from16 v0, p1

    if-ne v0, v13, :cond_f

    .line 4744
    :try_start_3a
    const-string v13, "floating_zh"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3a .. :try_end_3a} :catch_39

    move-result v12

    goto/16 :goto_1

    .line 4745
    :catch_39
    move-exception v3

    .line 4746
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f05025c

    .line 4747
    goto/16 :goto_1

    .line 4748
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_f
    const v13, 0x7a685457

    move/from16 v0, p1

    if-ne v0, v13, :cond_10

    .line 4750
    :try_start_3b
    const-string v13, "floating_zt"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3b .. :try_end_3b} :catch_3a

    move-result v12

    goto/16 :goto_1

    .line 4751
    :catch_3a
    move-exception v3

    .line 4752
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f05025d

    .line 4753
    goto/16 :goto_1

    .line 4756
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_10
    :try_start_3c
    const-string v13, "floating_cn"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3c .. :try_end_3c} :catch_3b

    move-result v12

    goto/16 :goto_1

    .line 4757
    :catch_3b
    move-exception v3

    .line 4758
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f05020d

    .line 4761
    goto/16 :goto_1

    .line 4764
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2a
    :try_start_3d
    const-string v13, "floating_lt"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3d .. :try_end_3d} :catch_3c

    move-result v12

    goto/16 :goto_1

    .line 4765
    :catch_3c
    move-exception v3

    .line 4766
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050226

    .line 4768
    goto/16 :goto_1

    .line 4771
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2b
    :try_start_3e
    const-string v13, "floating_is"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3e .. :try_end_3e} :catch_3d

    move-result v12

    goto/16 :goto_1

    .line 4772
    :catch_3d
    move-exception v3

    .line 4773
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f05021b

    .line 4775
    goto/16 :goto_1

    .line 4778
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2c
    :try_start_3f
    const-string v13, "floating_mk"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3f .. :try_end_3f} :catch_3e

    move-result v12

    goto/16 :goto_1

    .line 4779
    :catch_3e
    move-exception v3

    .line 4780
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050228

    .line 4782
    goto/16 :goto_1

    .line 4785
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2d
    :try_start_40
    const-string v13, "floating_et"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_40
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_40 .. :try_end_40} :catch_3f

    move-result v12

    goto/16 :goto_1

    .line 4786
    :catch_3f
    move-exception v3

    .line 4787
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050214

    .line 4789
    goto/16 :goto_1

    .line 4792
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2e
    :try_start_41
    const-string v13, "floating_sq"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_41
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_41 .. :try_end_41} :catch_40

    move-result v12

    goto/16 :goto_1

    .line 4793
    :catch_40
    move-exception v3

    .line 4794
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f05024f

    .line 4796
    goto/16 :goto_1

    .line 4799
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2f
    :try_start_42
    const-string v13, "floating_km"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_42 .. :try_end_42} :catch_41

    move-result v12

    goto/16 :goto_1

    .line 4800
    :catch_41
    move-exception v3

    .line 4801
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050220

    .line 4803
    goto/16 :goto_1

    .line 4807
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_30
    :try_start_43
    const-string v13, "floating_lo"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_43
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_43 .. :try_end_43} :catch_42

    move-result v12

    goto/16 :goto_1

    .line 4808
    :catch_42
    move-exception v3

    .line 4809
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050225

    .line 4811
    goto/16 :goto_1

    .line 4813
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_31
    const v13, 0x6d795a57

    move/from16 v0, p1

    if-ne v0, v13, :cond_2

    .line 4815
    :try_start_44
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v13}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 4816
    const-string v13, "floating_zw_shift_on"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v12

    goto/16 :goto_1

    .line 4818
    :cond_11
    const-string v13, "floating_zw"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_44
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_44 .. :try_end_44} :catch_43

    move-result v12

    goto/16 :goto_1

    .line 4820
    :catch_43
    move-exception v3

    .line 4821
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f05025e

    .line 4822
    goto/16 :goto_1

    .line 4827
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_32
    :try_start_45
    const-string v13, "floating_ja"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_45
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_45 .. :try_end_45} :catch_44

    move-result v12

    goto/16 :goto_1

    .line 4828
    :catch_44
    move-exception v3

    .line 4829
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f05021d

    .line 4831
    goto/16 :goto_1

    .line 4834
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_33
    :try_start_46
    const-string v13, "floating_mn"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_46
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_46 .. :try_end_46} :catch_45

    move-result v12

    goto/16 :goto_1

    .line 4835
    :catch_45
    move-exception v3

    .line 4836
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f05022a

    .line 4838
    goto/16 :goto_1

    .line 4841
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_34
    :try_start_47
    const-string v13, "floating_uz"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_47
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_47 .. :try_end_47} :catch_46

    move-result v12

    goto/16 :goto_1

    .line 4842
    :catch_46
    move-exception v3

    .line 4843
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050259

    .line 4845
    goto/16 :goto_1

    .line 4848
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_35
    :try_start_48
    const-string v13, "floating_ky"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_48
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_48 .. :try_end_48} :catch_47

    move-result v12

    goto/16 :goto_1

    .line 4849
    :catch_47
    move-exception v3

    .line 4850
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050224

    .line 4852
    goto/16 :goto_1

    .line 4855
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_36
    :try_start_49
    const-string v13, "floating_tg"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_49
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_49 .. :try_end_49} :catch_48

    move-result v12

    goto/16 :goto_1

    .line 4856
    :catch_48
    move-exception v3

    .line 4857
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050252

    .line 4859
    goto/16 :goto_1

    .line 4862
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_37
    :try_start_4a
    const-string v13, "floating_tk"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4a .. :try_end_4a} :catch_49

    move-result v12

    goto/16 :goto_1

    .line 4863
    :catch_49
    move-exception v3

    .line 4864
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050254

    .line 4866
    goto/16 :goto_1

    .line 4870
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :catch_4a
    move-exception v3

    .line 4871
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v12, 0x7f050212

    goto/16 :goto_1

    .line 4305
    nop

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_20
        0x61730000 -> :sswitch_a
        0x617a0000 -> :sswitch_26
        0x62670000 -> :sswitch_1d
        0x626e0000 -> :sswitch_1
        0x63610000 -> :sswitch_d
        0x63730000 -> :sswitch_10
        0x64610000 -> :sswitch_19
        0x64650000 -> :sswitch_16
        0x656c0000 -> :sswitch_1e
        0x656e0000 -> :sswitch_d
        0x65730000 -> :sswitch_12
        0x65734553 -> :sswitch_12
        0x65735553 -> :sswitch_12
        0x65740000 -> :sswitch_2d
        0x65750000 -> :sswitch_d
        0x66610000 -> :sswitch_22
        0x66690000 -> :sswitch_1b
        0x66720000 -> :sswitch_15
        0x66724341 -> :sswitch_15
        0x66724652 -> :sswitch_15
        0x676c0000 -> :sswitch_d
        0x67750000 -> :sswitch_2
        0x68690000 -> :sswitch_0
        0x68720000 -> :sswitch_10
        0x68750000 -> :sswitch_10
        0x68790000 -> :sswitch_27
        0x69640000 -> :sswitch_d
        0x69730000 -> :sswitch_2b
        0x69740000 -> :sswitch_13
        0x69770000 -> :sswitch_23
        0x6a610000 -> :sswitch_32
        0x6b610000 -> :sswitch_28
        0x6b6b0000 -> :sswitch_17
        0x6b6d0000 -> :sswitch_2f
        0x6b6e0000 -> :sswitch_3
        0x6b6f0000 -> :sswitch_14
        0x6b790000 -> :sswitch_35
        0x6c6f0000 -> :sswitch_30
        0x6c740000 -> :sswitch_2a
        0x6c760000 -> :sswitch_1f
        0x6d6b0000 -> :sswitch_2c
        0x6d6c0000 -> :sswitch_4
        0x6d6e0000 -> :sswitch_33
        0x6d720000 -> :sswitch_5
        0x6d730000 -> :sswitch_d
        0x6d790000 -> :sswitch_31
        0x6e620000 -> :sswitch_1a
        0x6e650000 -> :sswitch_b
        0x6e6c0000 -> :sswitch_11
        0x6f720000 -> :sswitch_c
        0x70610000 -> :sswitch_6
        0x706c0000 -> :sswitch_d
        0x70740000 -> :sswitch_d
        0x726f0000 -> :sswitch_d
        0x72750000 -> :sswitch_18
        0x73690000 -> :sswitch_7
        0x736b0000 -> :sswitch_d
        0x736c0000 -> :sswitch_f
        0x73710000 -> :sswitch_2e
        0x73720000 -> :sswitch_10
        0x73760000 -> :sswitch_1b
        0x74610000 -> :sswitch_9
        0x74650000 -> :sswitch_8
        0x74670000 -> :sswitch_36
        0x74680000 -> :sswitch_24
        0x746b0000 -> :sswitch_37
        0x74720000 -> :sswitch_e
        0x756b0000 -> :sswitch_1c
        0x75720000 -> :sswitch_21
        0x757a0000 -> :sswitch_34
        0x76690000 -> :sswitch_25
        0x7a680000 -> :sswitch_29
    .end sparse-switch

    .line 4417
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 4581
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    .line 4643
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method private getFloatingPhonePadKeyboardXmlId(I)I
    .locals 20
    .param p1, "language"    # I

    .prologue
    .line 4879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v13

    .line 4880
    .local v13, "preference":Landroid/content/SharedPreferences;
    const-string v17, "da_mode"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 4881
    .local v5, "isDaMode":Z
    const-string v17, "da_language"

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 4882
    .local v2, "daLanguage":I
    if-eqz v5, :cond_0

    .line 4883
    move/from16 p1, v2

    .line 4885
    :cond_0
    const/high16 v17, -0x10000

    and-int v12, p1, v17

    .line 4886
    .local v12, "langCode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v8

    .line 4888
    .local v8, "isSpellViewShown":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v14

    .line 4889
    .local v14, "strokeModeOn":Z
    const/16 v16, 0x0

    .line 4890
    .local v16, "xmlId":I
    sparse-switch v12, :sswitch_data_0

    .line 5463
    :try_start_0
    const-string v17, "floating_phonepad_en"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_4b

    move-result v16

    .line 5470
    :goto_0
    return v16

    .line 4893
    :sswitch_0
    :try_start_1
    const-string v17, "floating_phonepad_en"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v16

    goto :goto_0

    .line 4894
    :catch_0
    move-exception v3

    .line 4895
    .local v3, "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4897
    goto :goto_0

    .line 4902
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1
    :try_start_2
    const-string v17, "floating_phonepad_fr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v16

    goto :goto_0

    .line 4903
    :catch_1
    move-exception v3

    .line 4904
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4906
    goto :goto_0

    .line 4909
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2
    :try_start_3
    const-string v17, "floating_phonepad_de"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v16

    goto :goto_0

    .line 4910
    :catch_2
    move-exception v3

    .line 4911
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4913
    goto :goto_0

    .line 4918
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_3
    :try_start_4
    const-string v17, "floating_phonepad_es"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v16

    goto :goto_0

    .line 4919
    :catch_3
    move-exception v3

    .line 4920
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4922
    goto :goto_0

    .line 4925
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_4
    :try_start_5
    const-string v17, "floating_phonepad_it"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v16

    goto :goto_0

    .line 4926
    :catch_4
    move-exception v3

    .line 4927
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4929
    goto :goto_0

    .line 4932
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_5
    :try_start_6
    const-string v17, "floating_phonepad_cs"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    move-result v16

    goto :goto_0

    .line 4933
    :catch_5
    move-exception v3

    .line 4934
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4936
    goto :goto_0

    .line 4939
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_6
    :try_start_7
    const-string v17, "floating_phonepad_da"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    move-result v16

    goto :goto_0

    .line 4940
    :catch_6
    move-exception v3

    .line 4941
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4943
    goto :goto_0

    .line 4946
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_7
    :try_start_8
    const-string v17, "floating_phonepad_et"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_7

    move-result v16

    goto :goto_0

    .line 4947
    :catch_7
    move-exception v3

    .line 4948
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4950
    goto :goto_0

    .line 4953
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_8
    :try_start_9
    const-string v17, "floating_phonepad_hr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_8

    move-result v16

    goto :goto_0

    .line 4954
    :catch_8
    move-exception v3

    .line 4955
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4957
    goto :goto_0

    .line 4960
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_9
    :try_start_a
    const-string v17, "floating_phonepad_lv"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_9

    move-result v16

    goto :goto_0

    .line 4961
    :catch_9
    move-exception v3

    .line 4962
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4964
    goto :goto_0

    .line 4967
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_a
    :try_start_b
    const-string v17, "floating_phonepad_lt"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_a

    move-result v16

    goto :goto_0

    .line 4968
    :catch_a
    move-exception v3

    .line 4969
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4971
    goto/16 :goto_0

    .line 4974
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_b
    :try_start_c
    const-string v17, "floating_phonepad_hu"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_b

    move-result v16

    goto/16 :goto_0

    .line 4975
    :catch_b
    move-exception v3

    .line 4976
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4978
    goto/16 :goto_0

    .line 4981
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_c
    :try_start_d
    const-string v17, "floating_phonepad_nb"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_c

    move-result v16

    goto/16 :goto_0

    .line 4982
    :catch_c
    move-exception v3

    .line 4983
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4985
    goto/16 :goto_0

    .line 4988
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_d
    :try_start_e
    const-string v17, "floating_phonepad_nl"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_d

    move-result v16

    goto/16 :goto_0

    .line 4989
    :catch_d
    move-exception v3

    .line 4990
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4992
    goto/16 :goto_0

    .line 4995
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_e
    :try_start_f
    const-string v17, "floating_phonepad_pl"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_f} :catch_e

    move-result v16

    goto/16 :goto_0

    .line 4996
    :catch_e
    move-exception v3

    .line 4997
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4999
    goto/16 :goto_0

    .line 5004
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_f
    :try_start_10
    const-string v17, "floating_phonepad_pt"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_10} :catch_f

    move-result v16

    goto/16 :goto_0

    .line 5005
    :catch_f
    move-exception v3

    .line 5006
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 5008
    goto/16 :goto_0

    .line 5011
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_10
    :try_start_11
    const-string v17, "floating_phonepad_ro"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_11} :catch_10

    move-result v16

    goto/16 :goto_0

    .line 5012
    :catch_10
    move-exception v3

    .line 5013
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 5015
    goto/16 :goto_0

    .line 5018
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_11
    :try_start_12
    const-string v17, "floating_phonepad_fi"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_12} :catch_11

    move-result v16

    goto/16 :goto_0

    .line 5019
    :catch_11
    move-exception v3

    .line 5020
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 5022
    goto/16 :goto_0

    .line 5025
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_12
    :try_start_13
    const-string v17, "floating_phonepad_sr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_13} :catch_12

    move-result v16

    goto/16 :goto_0

    .line 5026
    :catch_12
    move-exception v3

    .line 5027
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 5029
    goto/16 :goto_0

    .line 5032
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_13
    :try_start_14
    const-string v17, "floating_phonepad_sv"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14 .. :try_end_14} :catch_13

    move-result v16

    goto/16 :goto_0

    .line 5033
    :catch_13
    move-exception v3

    .line 5034
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 5036
    goto/16 :goto_0

    .line 5039
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_14
    :try_start_15
    const-string v17, "floating_phonepad_sk"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_15} :catch_14

    move-result v16

    goto/16 :goto_0

    .line 5040
    :catch_14
    move-exception v3

    .line 5041
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 5043
    goto/16 :goto_0

    .line 5046
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_15
    :try_start_16
    const-string v17, "floating_phonepad_sl"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_16} :catch_15

    move-result v16

    goto/16 :goto_0

    .line 5047
    :catch_15
    move-exception v3

    .line 5048
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 5050
    goto/16 :goto_0

    .line 5053
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_16
    :try_start_17
    const-string v17, "floating_phonepad_tr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_17} :catch_16

    move-result v16

    goto/16 :goto_0

    .line 5054
    :catch_16
    move-exception v3

    .line 5055
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 5057
    goto/16 :goto_0

    .line 5060
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_17
    :try_start_18
    const-string v17, "floating_phonepad_ca"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_18 .. :try_end_18} :catch_17

    move-result v16

    goto/16 :goto_0

    .line 5061
    :catch_17
    move-exception v3

    .line 5062
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 5064
    goto/16 :goto_0

    .line 5067
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_18
    :try_start_19
    const-string v17, "floating_phonepad_gl"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_19 .. :try_end_19} :catch_18

    move-result v16

    goto/16 :goto_0

    .line 5068
    :catch_18
    move-exception v3

    .line 5069
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 5071
    goto/16 :goto_0

    .line 5074
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_19
    :try_start_1a
    const-string v17, "floating_phonepad_eu"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1a .. :try_end_1a} :catch_19

    move-result v16

    goto/16 :goto_0

    .line 5075
    :catch_19
    move-exception v3

    .line 5076
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 5078
    goto/16 :goto_0

    .line 5081
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1a
    :try_start_1b
    const-string v17, "floating_phonepad_is"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1b .. :try_end_1b} :catch_1a

    move-result v16

    goto/16 :goto_0

    .line 5082
    :catch_1a
    move-exception v3

    .line 5083
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 5085
    goto/16 :goto_0

    .line 5088
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1b
    :try_start_1c
    const-string v17, "floating_phonepad_sq"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1c .. :try_end_1c} :catch_1b

    move-result v16

    goto/16 :goto_0

    .line 5089
    :catch_1b
    move-exception v3

    .line 5090
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 5092
    goto/16 :goto_0

    .line 5095
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1c
    :try_start_1d
    const-string v17, "floating_phonepad_az"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1d .. :try_end_1d} :catch_1c

    move-result v16

    goto/16 :goto_0

    .line 5096
    :catch_1c
    move-exception v3

    .line 5097
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 5099
    goto/16 :goto_0

    .line 5102
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1d
    :try_start_1e
    const-string v17, "floating_phonepad_id"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1e .. :try_end_1e} :catch_1d

    move-result v16

    goto/16 :goto_0

    .line 5103
    :catch_1d
    move-exception v3

    .line 5104
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 5106
    goto/16 :goto_0

    .line 5109
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1e
    :try_start_1f
    const-string v17, "floating_phonepad_ms"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1f .. :try_end_1f} :catch_1e

    move-result v16

    goto/16 :goto_0

    .line 5110
    :catch_1e
    move-exception v3

    .line 5111
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 5113
    goto/16 :goto_0

    .line 5115
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "KOR_MODE"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v6

    .line 5116
    .local v6, "isKoreaMode":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_DEFAULT_USE_INPUT_METHOD_TYPE_ON_KOR"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v7

    .line 5117
    .local v7, "isSeperatlyKor":Z
    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    .line 5118
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v4

    .line 5120
    .local v4, "hangulModule":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 5121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v10

    .line 5122
    .local v10, "keypadType":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_1

    .line 5124
    :try_start_20
    const-string v17, "floating_kr_cji"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_20 .. :try_end_20} :catch_1f

    move-result v16

    goto/16 :goto_0

    .line 5125
    :catch_1f
    move-exception v3

    .line 5126
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501bb

    .line 5128
    goto/16 :goto_0

    .line 5129
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v10, v0, :cond_2

    .line 5131
    :try_start_21
    const-string v17, "floating_kr_cji_turbo"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_21
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_21 .. :try_end_21} :catch_20

    move-result v16

    goto/16 :goto_0

    .line 5132
    :catch_20
    move-exception v3

    .line 5133
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501bd

    .line 5135
    goto/16 :goto_0

    .line 5137
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    packed-switch v4, :pswitch_data_0

    .line 5154
    :try_start_22
    const-string v17, "floating_kr_cji"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_22
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_22 .. :try_end_22} :catch_23

    move-result v16

    goto/16 :goto_0

    .line 5140
    :pswitch_0
    :try_start_23
    const-string v17, "floating_kr_cji"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_23 .. :try_end_23} :catch_21

    move-result v16

    goto/16 :goto_0

    .line 5141
    :catch_21
    move-exception v3

    .line 5142
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501bb

    .line 5144
    goto/16 :goto_0

    .line 5147
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :pswitch_1
    :try_start_24
    const-string v17, "floating_kr_cji_turbo"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_24 .. :try_end_24} :catch_22

    move-result v16

    goto/16 :goto_0

    .line 5148
    :catch_22
    move-exception v3

    .line 5149
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501bd

    .line 5151
    goto/16 :goto_0

    .line 5155
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :catch_23
    move-exception v3

    .line 5156
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501bb

    goto/16 :goto_0

    .line 5162
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    .end local v10    # "keypadType":I
    :cond_3
    packed-switch v4, :pswitch_data_1

    .line 5193
    :try_start_25
    const-string v17, "floating_kr_cji"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_25 .. :try_end_25} :catch_28

    move-result v16

    goto/16 :goto_0

    .line 5165
    :pswitch_2
    :try_start_26
    const-string v17, "floating_kr_cji"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_26
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_26 .. :try_end_26} :catch_24

    move-result v16

    goto/16 :goto_0

    .line 5166
    :catch_24
    move-exception v3

    .line 5167
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501bb

    .line 5169
    goto/16 :goto_0

    .line 5172
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :pswitch_3
    :try_start_27
    const-string v17, "floating_kr_cji_turbo"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_27 .. :try_end_27} :catch_25

    move-result v16

    goto/16 :goto_0

    .line 5173
    :catch_25
    move-exception v3

    .line 5174
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501bd

    .line 5176
    goto/16 :goto_0

    .line 5179
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :pswitch_4
    :try_start_28
    const-string v17, "floating_kr_nara"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_28 .. :try_end_28} :catch_26

    move-result v16

    goto/16 :goto_0

    .line 5180
    :catch_26
    move-exception v3

    .line 5181
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501bf

    .line 5183
    goto/16 :goto_0

    .line 5186
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :pswitch_5
    :try_start_29
    const-string v17, "floating_kr_sky"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_29 .. :try_end_29} :catch_27

    move-result v16

    goto/16 :goto_0

    .line 5187
    :catch_27
    move-exception v3

    .line 5188
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501c0

    .line 5190
    goto/16 :goto_0

    .line 5194
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :catch_28
    move-exception v3

    .line 5195
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501bb

    goto/16 :goto_0

    .line 5202
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    .end local v4    # "hangulModule":I
    :cond_4
    :try_start_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->makeSelectLanguagePrefKey(I)Ljava/lang/String;

    move-result-object v9

    .line 5203
    .local v9, "key":Ljava/lang/String;
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v13, v9, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 5205
    .local v11, "korKeyboardType":I
    packed-switch v11, :pswitch_data_2

    .line 5210
    const-string v17, "floating_kr_cji"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v16

    goto/16 :goto_0

    .line 5207
    :pswitch_6
    const-string v17, "floating_kr_cji_turbo"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2a .. :try_end_2a} :catch_29

    move-result v16

    .line 5208
    goto/16 :goto_0

    .line 5213
    .end local v9    # "key":Ljava/lang/String;
    .end local v11    # "korKeyboardType":I
    :catch_29
    move-exception v3

    .line 5214
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501bb

    .line 5217
    goto/16 :goto_0

    .line 5220
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    .end local v6    # "isKoreaMode":Z
    .end local v7    # "isSeperatlyKor":Z
    :sswitch_20
    :try_start_2b
    const-string v17, "floating_phonepad_kk"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2b .. :try_end_2b} :catch_2a

    move-result v16

    goto/16 :goto_0

    .line 5221
    :catch_2a
    move-exception v3

    .line 5222
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501dc

    .line 5224
    goto/16 :goto_0

    .line 5227
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_21
    :try_start_2c
    const-string v17, "floating_phonepad_ru"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2c .. :try_end_2c} :catch_2b

    move-result v16

    goto/16 :goto_0

    .line 5228
    :catch_2b
    move-exception v3

    .line 5229
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501dc

    .line 5231
    goto/16 :goto_0

    .line 5234
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_22
    :try_start_2d
    const-string v17, "floating_phonepad_bg"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2d .. :try_end_2d} :catch_2c

    move-result v16

    goto/16 :goto_0

    .line 5235
    :catch_2c
    move-exception v3

    .line 5236
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050198

    .line 5238
    goto/16 :goto_0

    .line 5241
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_23
    :try_start_2e
    const-string v17, "floating_phonepad_uk"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2e .. :try_end_2e} :catch_2d

    move-result v16

    goto/16 :goto_0

    .line 5242
    :catch_2d
    move-exception v3

    .line 5243
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501f2

    .line 5245
    goto/16 :goto_0

    .line 5248
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_24
    :try_start_2f
    const-string v17, "floating_phonepad_el"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2f .. :try_end_2f} :catch_2e

    move-result v16

    goto/16 :goto_0

    .line 5249
    :catch_2e
    move-exception v3

    .line 5250
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a3

    .line 5252
    goto/16 :goto_0

    .line 5254
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_25
    const v17, 0x7a68484b

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 5256
    :try_start_30
    const-string v17, "floating_phonepad_zh_stroke"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_30
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_30 .. :try_end_30} :catch_2f

    move-result v16

    goto/16 :goto_0

    .line 5257
    :catch_2f
    move-exception v3

    .line 5258
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501f7

    .line 5259
    goto/16 :goto_0

    .line 5260
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_5
    const v17, 0x7a685457

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 5261
    if-eqz v14, :cond_6

    .line 5263
    :try_start_31
    const-string v17, "floating_phonepad_zt_stroke"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_31
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_31 .. :try_end_31} :catch_30

    move-result v16

    goto/16 :goto_0

    .line 5264
    :catch_30
    move-exception v3

    .line 5265
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501f8

    .line 5266
    goto/16 :goto_0

    .line 5268
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_6
    if-eqz v8, :cond_7

    .line 5270
    :try_start_32
    const-string v17, "floating_phonepad_zt_zhuyin_spell"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_32
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_32 .. :try_end_32} :catch_31

    move-result v16

    goto/16 :goto_0

    .line 5271
    :catch_31
    move-exception v3

    .line 5272
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501fa

    .line 5273
    goto/16 :goto_0

    .line 5276
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_7
    :try_start_33
    const-string v17, "floating_phonepad_zt_zhuyin"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_33
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_33 .. :try_end_33} :catch_32

    move-result v16

    goto/16 :goto_0

    .line 5277
    :catch_32
    move-exception v3

    .line 5278
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501f9

    .line 5279
    goto/16 :goto_0

    .line 5283
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_8
    if-eqz v14, :cond_9

    .line 5285
    :try_start_34
    const-string v17, "floating_phonepad_cn_stroke"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_34
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_34 .. :try_end_34} :catch_33

    move-result v16

    goto/16 :goto_0

    .line 5286
    :catch_33
    move-exception v3

    .line 5287
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f05019d

    .line 5288
    goto/16 :goto_0

    .line 5290
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_9
    if-eqz v8, :cond_a

    .line 5292
    :try_start_35
    const-string v17, "floating_phonepad_cn_pinyin_spell"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_35
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_35 .. :try_end_35} :catch_34

    move-result v16

    goto/16 :goto_0

    .line 5293
    :catch_34
    move-exception v3

    .line 5294
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f05019c

    .line 5295
    goto/16 :goto_0

    .line 5298
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_a
    :try_start_36
    const-string v17, "floating_phonepad_cn_pinyin"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_36
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_36 .. :try_end_36} :catch_35

    move-result v16

    goto/16 :goto_0

    .line 5299
    :catch_35
    move-exception v3

    .line 5300
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f05019b

    .line 5305
    goto/16 :goto_0

    .line 5307
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_26
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentThaiVowelPageNum()I

    move-result v15

    .line 5308
    .local v15, "thaiVowelPage":I
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v15, v0, :cond_b

    .line 5310
    :try_start_37
    const-string v17, "floating_phonepad_th_tone"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_37 .. :try_end_37} :catch_36

    move-result v16

    goto/16 :goto_0

    .line 5311
    :catch_36
    move-exception v3

    .line 5312
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501eb

    .line 5313
    goto/16 :goto_0

    .line 5314
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_b
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_c

    .line 5316
    :try_start_38
    const-string v17, "floating_phonepad_th_tone_01"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_38
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_38 .. :try_end_38} :catch_37

    move-result v16

    goto/16 :goto_0

    .line 5317
    :catch_37
    move-exception v3

    .line 5318
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501ec

    .line 5319
    goto/16 :goto_0

    .line 5320
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_c
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_d

    .line 5322
    :try_start_39
    const-string v17, "floating_phonepad_th_tone_02"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_39
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_39 .. :try_end_39} :catch_38

    move-result v16

    goto/16 :goto_0

    .line 5323
    :catch_38
    move-exception v3

    .line 5324
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501ed

    .line 5325
    goto/16 :goto_0

    .line 5328
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_d
    :try_start_3a
    const-string v17, "floating_phonepad_th"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3a .. :try_end_3a} :catch_39

    move-result v16

    goto/16 :goto_0

    .line 5329
    :catch_39
    move-exception v3

    .line 5330
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501ea

    .line 5333
    goto/16 :goto_0

    .line 5336
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    .end local v15    # "thaiVowelPage":I
    :sswitch_27
    :try_start_3b
    const-string v17, "floating_phonepad_vi"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3b .. :try_end_3b} :catch_3a

    move-result v16

    goto/16 :goto_0

    .line 5337
    :catch_3a
    move-exception v3

    .line 5338
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501f5

    .line 5340
    goto/16 :goto_0

    .line 5343
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_28
    :try_start_3c
    const-string v17, "floating_phonepad_ar"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3c .. :try_end_3c} :catch_3b

    move-result v16

    goto/16 :goto_0

    .line 5344
    :catch_3b
    move-exception v3

    .line 5345
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050196

    .line 5347
    goto/16 :goto_0

    .line 5350
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_29
    :try_start_3d
    const-string v17, "floating_phonepad_fa"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3d .. :try_end_3d} :catch_3c

    move-result v16

    goto/16 :goto_0

    .line 5351
    :catch_3c
    move-exception v3

    .line 5352
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a8

    .line 5354
    goto/16 :goto_0

    .line 5357
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2a
    :try_start_3e
    const-string v17, "floating_phonepad_ur"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3e .. :try_end_3e} :catch_3d

    move-result v16

    goto/16 :goto_0

    .line 5358
    :catch_3d
    move-exception v3

    .line 5359
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501f3

    .line 5361
    goto/16 :goto_0

    .line 5364
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2b
    :try_start_3f
    const-string v17, "floating_phonepad_he"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3f .. :try_end_3f} :catch_3e

    move-result v16

    goto/16 :goto_0

    .line 5365
    :catch_3e
    move-exception v3

    .line 5366
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501ac

    .line 5368
    goto/16 :goto_0

    .line 5371
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2c
    :try_start_40
    const-string v17, "floating_phonepad_ka"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_40
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_40 .. :try_end_40} :catch_3f

    move-result v16

    goto/16 :goto_0

    .line 5372
    :catch_3f
    move-exception v3

    .line 5373
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501b6

    .line 5375
    goto/16 :goto_0

    .line 5378
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2d
    :try_start_41
    const-string v17, "floating_phonepad_hy"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_41
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_41 .. :try_end_41} :catch_40

    move-result v16

    goto/16 :goto_0

    .line 5379
    :catch_40
    move-exception v3

    .line 5380
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501af

    .line 5382
    goto/16 :goto_0

    .line 5385
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2e
    :try_start_42
    const-string v17, "floating_phonepad_mk"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_42 .. :try_end_42} :catch_41

    move-result v16

    goto/16 :goto_0

    .line 5386
    :catch_41
    move-exception v3

    .line 5387
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501c5

    .line 5389
    goto/16 :goto_0

    .line 5392
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2f
    :try_start_43
    const-string v17, "floating_phonepad_km"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_43
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_43 .. :try_end_43} :catch_42

    move-result v16

    goto/16 :goto_0

    .line 5393
    :catch_42
    move-exception v3

    .line 5394
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501b8

    .line 5396
    goto/16 :goto_0

    .line 5399
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_30
    :try_start_44
    const-string v17, "floating_phonepad_lo"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_44
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_44 .. :try_end_44} :catch_43

    move-result v16

    goto/16 :goto_0

    .line 5400
    :catch_43
    move-exception v3

    .line 5401
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501c2

    .line 5403
    goto/16 :goto_0

    .line 5406
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_31
    :try_start_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 5407
    const-string v17, "floating_phonepad_ja_flick"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v16

    goto/16 :goto_0

    .line 5409
    :cond_e
    const-string v17, "floating_phonepad_ja"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_45
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_45 .. :try_end_45} :catch_44

    move-result v16

    goto/16 :goto_0

    .line 5411
    :catch_44
    move-exception v3

    .line 5412
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 5413
    const v16, 0x7f0501b4

    goto/16 :goto_0

    .line 5415
    :cond_f
    const v16, 0x7f0501b3

    goto/16 :goto_0

    .line 5421
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_32
    :try_start_46
    const-string v17, "floating_phonepad_mn"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_46
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_46 .. :try_end_46} :catch_45

    move-result v16

    goto/16 :goto_0

    .line 5422
    :catch_45
    move-exception v3

    .line 5423
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501c6

    .line 5425
    goto/16 :goto_0

    .line 5428
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_33
    :try_start_47
    const-string v17, "floating_phonepad_uz"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_47
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_47 .. :try_end_47} :catch_46

    move-result v16

    goto/16 :goto_0

    .line 5429
    :catch_46
    move-exception v3

    .line 5430
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501f4

    .line 5432
    goto/16 :goto_0

    .line 5435
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_34
    :try_start_48
    const-string v17, "floating_phonepad_ky"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_48
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_48 .. :try_end_48} :catch_47

    move-result v16

    goto/16 :goto_0

    .line 5436
    :catch_47
    move-exception v3

    .line 5437
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501c1

    .line 5439
    goto/16 :goto_0

    .line 5442
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_35
    :try_start_49
    const-string v17, "floating_phonepad_tg"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_49
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_49 .. :try_end_49} :catch_48

    move-result v16

    goto/16 :goto_0

    .line 5443
    :catch_48
    move-exception v3

    .line 5444
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501e9

    .line 5446
    goto/16 :goto_0

    .line 5449
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_36
    :try_start_4a
    const-string v17, "floating_phonepad_tk"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4a .. :try_end_4a} :catch_49

    move-result v16

    goto/16 :goto_0

    .line 5450
    :catch_49
    move-exception v3

    .line 5451
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501ef

    .line 5453
    goto/16 :goto_0

    .line 5456
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_37
    :try_start_4b
    const-string v17, "floating_phonepad_af"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4b .. :try_end_4b} :catch_4a

    move-result v16

    goto/16 :goto_0

    .line 5457
    :catch_4a
    move-exception v3

    .line 5458
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050195

    .line 5460
    goto/16 :goto_0

    .line 5464
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :catch_4b
    move-exception v3

    .line 5465
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    goto/16 :goto_0

    .line 4890
    nop

    :sswitch_data_0
    .sparse-switch
        0x61660000 -> :sswitch_37
        0x61720000 -> :sswitch_28
        0x617a0000 -> :sswitch_1c
        0x62670000 -> :sswitch_22
        0x63610000 -> :sswitch_17
        0x63730000 -> :sswitch_5
        0x64610000 -> :sswitch_6
        0x64650000 -> :sswitch_2
        0x656c0000 -> :sswitch_24
        0x656e0000 -> :sswitch_0
        0x65730000 -> :sswitch_3
        0x65734553 -> :sswitch_3
        0x65735553 -> :sswitch_3
        0x65740000 -> :sswitch_7
        0x65750000 -> :sswitch_19
        0x66610000 -> :sswitch_29
        0x66690000 -> :sswitch_11
        0x66720000 -> :sswitch_1
        0x66724341 -> :sswitch_1
        0x66724652 -> :sswitch_1
        0x676c0000 -> :sswitch_18
        0x68720000 -> :sswitch_8
        0x68750000 -> :sswitch_b
        0x68790000 -> :sswitch_2d
        0x69640000 -> :sswitch_1d
        0x69730000 -> :sswitch_1a
        0x69740000 -> :sswitch_4
        0x69770000 -> :sswitch_2b
        0x6a610000 -> :sswitch_31
        0x6b610000 -> :sswitch_2c
        0x6b6b0000 -> :sswitch_20
        0x6b6d0000 -> :sswitch_2f
        0x6b6f0000 -> :sswitch_1f
        0x6b790000 -> :sswitch_34
        0x6c6f0000 -> :sswitch_30
        0x6c740000 -> :sswitch_a
        0x6c760000 -> :sswitch_9
        0x6d6b0000 -> :sswitch_2e
        0x6d6e0000 -> :sswitch_32
        0x6d730000 -> :sswitch_1e
        0x6e620000 -> :sswitch_c
        0x6e6c0000 -> :sswitch_d
        0x706c0000 -> :sswitch_e
        0x70740000 -> :sswitch_f
        0x70744252 -> :sswitch_f
        0x70745054 -> :sswitch_f
        0x726f0000 -> :sswitch_10
        0x72750000 -> :sswitch_21
        0x736b0000 -> :sswitch_14
        0x736c0000 -> :sswitch_15
        0x73710000 -> :sswitch_1b
        0x73720000 -> :sswitch_12
        0x73760000 -> :sswitch_13
        0x74670000 -> :sswitch_35
        0x74680000 -> :sswitch_26
        0x746b0000 -> :sswitch_36
        0x74720000 -> :sswitch_16
        0x756b0000 -> :sswitch_23
        0x75720000 -> :sswitch_2a
        0x757a0000 -> :sswitch_33
        0x76690000 -> :sswitch_27
        0x7a680000 -> :sswitch_25
    .end sparse-switch

    .line 5137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 5162
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 5205
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_6
    .end packed-switch
.end method

.method private getFloatingPhonePadNumberKeyboardXmlId()I
    .locals 6

    .prologue
    .line 262
    const/4 v2, 0x0

    .line 263
    .local v2, "xmlId":I
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v1

    .line 265
    .local v1, "privateImeOptionsInputType":I
    const/16 v3, 0xa

    if-ne v1, v3, :cond_1

    .line 267
    :try_start_0
    const-string v3, "floating_phonepad_month"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 354
    :cond_0
    :goto_0
    return v2

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    const v2, 0x7f0501c7

    .line 270
    goto :goto_0

    .line 271
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 272
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 274
    :try_start_1
    const-string v3, "floating_phonepad_number"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    .line 275
    :catch_1
    move-exception v0

    .line 276
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v2, 0x7f0501cc

    .line 277
    goto :goto_0

    .line 278
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 280
    :try_start_2
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "INPUT_LANGUAGE"

    const v5, 0x656e4742

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    const/high16 v4, 0x6b6d0000

    if-ne v3, v4, :cond_3

    .line 281
    const-string v3, "floating_phonepad_number_km"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 282
    :cond_3
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "INPUT_LANGUAGE"

    const v5, 0x656e4742

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    const/high16 v4, 0x6c6f0000

    if-ne v3, v4, :cond_4

    .line 283
    const-string v3, "floating_phonepad_number_lo"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 284
    :cond_4
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "INPUT_LANGUAGE"

    const v5, 0x656e4742

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    const/high16 v4, 0x61720000

    if-ne v3, v4, :cond_5

    .line 285
    const-string v3, "floating_phonepad_number_arabic"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 286
    :cond_5
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "INPUT_LANGUAGE"

    const v5, 0x656e4742

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    const/high16 v4, 0x66610000

    if-ne v3, v4, :cond_6

    .line 287
    const-string v3, "floating_phonepad_number_farsi"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 289
    :cond_6
    const-string v3, "floating_phonepad_number"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    goto/16 :goto_0

    .line 291
    :catch_2
    move-exception v0

    .line 292
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v2, 0x7f0501cc

    .line 293
    goto/16 :goto_0

    .line 294
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_7
    const/16 v3, 0x9

    if-eq v1, v3, :cond_8

    const/16 v3, 0xe

    if-ne v1, v3, :cond_9

    .line 297
    :cond_8
    :try_start_3
    const-string v3, "floating_phonepad_yeardatetime"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v2

    goto/16 :goto_0

    .line 298
    :catch_3
    move-exception v0

    .line 299
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v2, 0x7f0501f6

    .line 300
    goto/16 :goto_0

    .line 301
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_9
    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-nez v3, :cond_0

    .line 302
    const/4 v3, 0x1

    if-ne v1, v3, :cond_a

    .line 304
    :try_start_4
    const-string v3, "floating_phonepad_number_decimal"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v2

    goto/16 :goto_0

    .line 305
    :catch_4
    move-exception v0

    .line 306
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v2, 0x7f0501ce

    .line 307
    goto/16 :goto_0

    .line 308
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_a
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDecimalNumberInputType()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 310
    :try_start_5
    const-string v3, "floating_phonepad_number_decimal"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v2

    goto/16 :goto_0

    .line 311
    :catch_5
    move-exception v0

    .line 312
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v2, 0x7f0501ce

    .line 313
    goto/16 :goto_0

    .line 314
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_b
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberOnlyInputType()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 316
    :try_start_6
    const-string v3, "floating_phonepad_number_only"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v2

    goto/16 :goto_0

    .line 317
    :catch_6
    move-exception v0

    .line 318
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v2, 0x7f0501d2

    .line 319
    goto/16 :goto_0

    .line 320
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_c
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isSignedNumberInputType()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 322
    :try_start_7
    const-string v3, "floating_phonepad_number_signed"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v2

    goto/16 :goto_0

    .line 323
    :catch_7
    move-exception v0

    .line 324
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v2, 0x7f0501d4

    .line 325
    goto/16 :goto_0

    .line 326
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_d
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isSignedDecimalNumberInputType()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 328
    :try_start_8
    const-string v3, "floating_phonepad_number_signed_decimal"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v2

    goto/16 :goto_0

    .line 329
    :catch_8
    move-exception v0

    .line 330
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v2, 0x7f0501d5

    .line 331
    goto/16 :goto_0

    .line 332
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_e
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isTimeInputType()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 334
    :try_start_9
    const-string v3, "floating_phonepad_time"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_9

    move-result v2

    goto/16 :goto_0

    .line 335
    :catch_9
    move-exception v0

    .line 336
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v2, 0x7f0501ee

    .line 337
    goto/16 :goto_0

    .line 338
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_f
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDateInputType()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 340
    :try_start_a
    const-string v3, "floating_phonepad_date"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_a

    move-result v2

    goto/16 :goto_0

    .line 341
    :catch_a
    move-exception v0

    .line 342
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v2, 0x7f0501a0

    .line 343
    goto/16 :goto_0

    .line 344
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_10
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDateTimeInputType()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 346
    :try_start_b
    const-string v3, "floating_phonepad_datetime"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_b

    move-result v2

    goto/16 :goto_0

    .line 347
    :catch_b
    move-exception v0

    .line 348
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v2, 0x7f0501a1

    goto/16 :goto_0
.end method

.method private getFloatingPhonepadNumberPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 9
    .param p1, "bIsLeftSplitKeyboard"    # Z

    .prologue
    const v8, 0x656e4742

    .line 6866
    const-string v6, "SamsungIME"

    const-string v7, "getFloatingPhonepadNumberPopupKeyboard"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6868
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 6869
    const/4 v5, 0x0

    .line 6870
    .local v5, "xmlId":I
    const/4 v3, 0x0

    .line 6871
    .local v3, "modeId":I
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    .line 6872
    .local v2, "method":I
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v4

    .line 6873
    .local v4, "privateImeOptionsInputType":I
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "INPUT_LANGUAGE"

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    .line 6875
    .local v1, "language":I
    const/16 v6, 0xa

    if-ne v4, v6, :cond_1

    .line 6877
    :try_start_0
    const-string v6, "floating_month"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 6930
    :goto_0
    iget-object v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v6, v5, :cond_0

    iget v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v6, v3, :cond_0

    iget-boolean v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v7

    if-eq v6, v7, :cond_12

    .line 6932
    :cond_0
    if-eqz v3, :cond_11

    .line 6933
    new-instance v6, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v5, v3}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 6938
    :goto_1
    iget-object v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-direct {p0, v6, v5, v3}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    .line 6943
    :goto_2
    iget-object v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    return-object v6

    .line 6878
    :catch_0
    move-exception v0

    .line 6879
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    const v5, 0x7f0501c7

    .line 6880
    goto :goto_0

    .line 6881
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    const/16 v6, 0x9

    if-eq v4, v6, :cond_2

    const/16 v6, 0xe

    if-ne v4, v6, :cond_3

    .line 6884
    :cond_2
    :try_start_1
    const-string v6, "floating_yeardatetime"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    goto :goto_0

    .line 6885
    :catch_1
    move-exception v0

    .line 6886
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v5, 0x7f0501f6

    .line 6887
    goto :goto_0

    .line 6888
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    if-eq v2, v6, :cond_4

    .line 6891
    :try_start_2
    const-string v6, "floating_phone_number"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v5

    goto :goto_0

    .line 6892
    :catch_2
    move-exception v0

    .line 6893
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v5, 0x7f0501d6

    .line 6894
    goto :goto_0

    .line 6897
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_4
    const/4 v6, 0x1

    if-ne v4, v6, :cond_5

    .line 6898
    :try_start_3
    const-string v6, "floating_phonepad_number_decimal"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v5

    .line 6927
    :goto_3
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getNumberKeyboardModeId()I

    move-result v3

    goto :goto_0

    .line 6899
    :cond_5
    :try_start_4
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDecimalNumberInputType()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 6900
    const-string v6, "floating_phonepad_number_decimal"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v5

    goto :goto_3

    .line 6901
    :cond_6
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberOnlyInputType()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 6902
    const-string v6, "floating_phonepad_number_only"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v5

    goto :goto_3

    .line 6903
    :cond_7
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isSignedNumberInputType()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 6904
    const-string v6, "floating_phonepad_number_signed"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v5

    goto :goto_3

    .line 6905
    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isSignedDecimalNumberInputType()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 6906
    const-string v6, "floating_phonepad_number_signed_decimal"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v5

    goto :goto_3

    .line 6907
    :cond_9
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isTimeInputType()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 6908
    const-string v6, "floating_phonepad_time"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v5

    goto :goto_3

    .line 6909
    :cond_a
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDateInputType()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 6910
    const-string v6, "floating_phonepad_date"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v5

    goto :goto_3

    .line 6911
    :cond_b
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDateTimeInputType()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 6912
    const-string v6, "floating_phonepad_datetime"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v5

    goto :goto_3

    .line 6913
    :cond_c
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "INPUT_LANGUAGE"

    const v8, 0x656e4742

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v6

    const/high16 v7, 0x6b6d0000

    if-ne v6, v7, :cond_d

    .line 6914
    const-string v6, "floating_phonepad_number_km"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v5

    goto :goto_3

    .line 6915
    :cond_d
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "INPUT_LANGUAGE"

    const v8, 0x656e4742

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v6

    const/high16 v7, 0x6c6f0000

    if-ne v6, v7, :cond_e

    .line 6916
    const-string v6, "floating_phonepad_number_lo"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_3

    .line 6917
    :cond_e
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "INPUT_LANGUAGE"

    const v8, 0x656e4742

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v6

    const/high16 v7, 0x61720000

    if-ne v6, v7, :cond_f

    .line 6918
    const-string v6, "floating_phonepad_number_arabic"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_3

    .line 6919
    :cond_f
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "INPUT_LANGUAGE"

    const v8, 0x656e4742

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v6

    const/high16 v7, 0x66610000

    if-ne v6, v7, :cond_10

    .line 6920
    const-string v6, "floating_phonepad_number_farsi"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_3

    .line 6922
    :cond_10
    const-string v6, "floating_phonepad_number"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v5

    goto/16 :goto_3

    .line 6924
    :catch_3
    move-exception v0

    .line 6925
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v5, 0x7f0501cc

    goto/16 :goto_3

    .line 6935
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_11
    new-instance v6, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v5}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_1

    .line 6940
    :cond_12
    iget-object v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iput-object v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_2
.end method

.method private getFloatingPhonepadSymbolPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 10
    .param p1, "bIsLeftSplitKeyboard"    # Z

    .prologue
    const v9, 0x656e4742

    .line 7340
    const-string v7, "SamsungIME"

    const-string v8, "getFloatingPhonepadSymbolPopupKeyboard"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7342
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 7343
    const/4 v6, 0x0

    .line 7344
    .local v6, "xmlId":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v1

    .line 7345
    .local v1, "isPhoneNumberInput":Z
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "INPUT_LANGUAGE"

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    .line 7346
    .local v3, "language":I
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    .line 7347
    .local v4, "method":I
    const/4 v5, 0x0

    .line 7349
    .local v5, "modeId":I
    if-eqz v1, :cond_1

    .line 7351
    :try_start_0
    const-string v7, "floating_phone_symbol"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 7395
    :goto_0
    iget-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v7, v6, :cond_0

    iget v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v7, v5, :cond_0

    iget-boolean v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v8

    if-eq v7, v8, :cond_b

    .line 7397
    :cond_0
    if-eqz v5, :cond_a

    .line 7398
    new-instance v7, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v6, v5}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 7403
    :goto_1
    iget-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-direct {p0, v7, v6, v5}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    .line 7407
    :goto_2
    iget-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    return-object v7

    .line 7352
    :catch_0
    move-exception v0

    .line 7353
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0501e3

    .line 7354
    goto :goto_0

    .line 7356
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 7357
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v2

    .line 7359
    .local v2, "keypadType":I
    const/4 v7, 0x1

    if-eq v2, v7, :cond_2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_3

    .line 7360
    :cond_2
    :try_start_1
    const-string v7, "floating_kr_cji_symbol"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 7391
    .end local v2    # "keypadType":I
    :goto_3
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SYMBOLS_PAGE"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v5

    goto :goto_0

    .line 7362
    .restart local v2    # "keypadType":I
    :cond_3
    :try_start_2
    const-string v7, "floating_phonepad_symbol"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v6

    goto :goto_3

    .line 7364
    :catch_1
    move-exception v0

    .line 7365
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0501e3

    goto :goto_3

    .line 7369
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "keypadType":I
    :cond_4
    :try_start_3
    const-string v7, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 7371
    invoke-static {v3}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 7372
    const-string v7, "floating_phonepad_symbol_he_arabic"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v6

    goto :goto_3

    .line 7374
    :cond_5
    const-string v7, "floating_phonepad_symbol_he"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v6

    goto :goto_3

    .line 7377
    :cond_6
    invoke-static {v3}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 7378
    const-string v7, "floating_phonepad_symbol_arabic"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v6

    goto :goto_3

    .line 7379
    :cond_7
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "INPUT_LANGUAGE"

    const v9, 0x656e4742

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v7

    const/high16 v8, 0x6b6d0000

    if-ne v7, v8, :cond_8

    .line 7380
    const-string v7, "floating_phonepad_symbol_km"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v6

    goto :goto_3

    .line 7381
    :cond_8
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "INPUT_LANGUAGE"

    const v9, 0x656e4742

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v7

    const/high16 v8, 0x6c6f0000

    if-ne v7, v8, :cond_9

    .line 7382
    const-string v7, "floating_phonepad_symbol_lo"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v6

    goto :goto_3

    .line 7384
    :cond_9
    const-string v7, "floating_phonepad_symbol"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v6

    goto :goto_3

    .line 7387
    :catch_2
    move-exception v0

    .line 7388
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0501e3

    goto/16 :goto_3

    .line 7400
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_a
    new-instance v7, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v6}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_1

    .line 7405
    :cond_b
    iget-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iput-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_2
.end method

.method private getHWRKeyboardXmlId()I
    .locals 2

    .prologue
    .line 2662
    const/4 v0, 0x0

    .line 2664
    .local v0, "xmlId":I
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2665
    const v0, 0x7f050335

    .line 2670
    :goto_0
    return v0

    .line 2667
    :cond_0
    const v0, 0x7f050001

    goto :goto_0
.end method

.method private getHWRSymbolKeyboardXmlId(I)I
    .locals 3
    .param p1, "language"    # I

    .prologue
    .line 2686
    const/4 v1, 0x0

    .line 2688
    .local v1, "xmlId":I
    const/high16 v2, 0x74680000

    if-ne p1, v2, :cond_0

    .line 2689
    :try_start_0
    const-string v2, "qwerty_number_symbols_th"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v1

    :goto_0
    move v2, v1

    .line 2702
    :goto_1
    return v2

    .line 2690
    :cond_0
    const/high16 v2, 0x61720000

    if-ne p1, v2, :cond_1

    .line 2691
    const-string v2, "qwerty_number_symbols_arabic"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 2692
    :cond_1
    const/high16 v2, 0x66610000

    if-ne p1, v2, :cond_2

    .line 2693
    const-string v2, "qwerty_number_symbols_farsi"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 2694
    :cond_2
    const/high16 v2, 0x75720000

    if-ne p1, v2, :cond_3

    .line 2695
    const-string v2, "qwerty_number_symbols_urdu"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 2697
    :cond_3
    const-string v2, "qwerty_number_symbols"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2699
    :catch_0
    move-exception v0

    .line 2700
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getHwrKeyboardModeId()I
    .locals 14

    .prologue
    const v10, 0x7f0800da

    const/4 v8, 0x1

    const/4 v9, 0x0

    const v11, 0x7f0800db

    .line 2288
    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    .line 2289
    .local v7, "preference":Landroid/content/SharedPreferences;
    const-string v12, "da_mode"

    invoke-interface {v7, v12, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 2290
    .local v2, "isDaMode":Z
    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v13, "SETTINGS_DEFAULT_VOICE_INPUT"

    invoke-interface {v12, v13, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVoiceInputEnabled()Z

    move-result v12

    if-eqz v12, :cond_0

    move v6, v8

    .line 2292
    .local v6, "isVoiceInputEnable":Z
    :goto_0
    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    .line 2293
    .local v1, "inputMethod":I
    const/16 v12, 0x8

    if-ne v1, v12, :cond_1

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v12

    if-nez v12, :cond_1

    move v4, v8

    .line 2296
    .local v4, "isFloatingQwertyKeyboard":Z
    :goto_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v3

    .line 2297
    .local v3, "isEmailMode":Z
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v5

    .line 2299
    .local v5, "isUrlMode":Z
    iget-boolean v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-eqz v12, :cond_6

    .line 2301
    :try_start_0
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v9

    array-length v9, v9

    if-le v9, v8, :cond_3

    if-nez v2, :cond_3

    .line 2302
    if-eqz v6, :cond_2

    move v8, v10

    .line 2353
    :goto_2
    return v8

    .end local v1    # "inputMethod":I
    .end local v3    # "isEmailMode":Z
    .end local v4    # "isFloatingQwertyKeyboard":Z
    .end local v5    # "isUrlMode":Z
    .end local v6    # "isVoiceInputEnable":Z
    :cond_0
    move v6, v9

    .line 2290
    goto :goto_0

    .restart local v1    # "inputMethod":I
    .restart local v6    # "isVoiceInputEnable":Z
    :cond_1
    move v4, v9

    .line 2293
    goto :goto_1

    .line 2305
    .restart local v3    # "isEmailMode":Z
    .restart local v4    # "isFloatingQwertyKeyboard":Z
    .restart local v5    # "isUrlMode":Z
    :cond_2
    const-string v9, "mode_normal_voice_off"

    invoke-static {v9}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v8

    goto :goto_2

    .line 2308
    :cond_3
    if-eqz v6, :cond_4

    move v8, v11

    .line 2309
    goto :goto_2

    .line 2311
    :cond_4
    const-string v9, "mode_single_language_voice_off"

    invoke-static {v9}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    goto :goto_2

    .line 2314
    :catch_0
    move-exception v0

    .line 2315
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    const-string v9, "SamsungIME"

    const-string v12, "getTextKeyboardModeId() : return value not found exception!"

    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v9

    array-length v9, v9

    if-le v9, v8, :cond_5

    if-nez v2, :cond_5

    move v8, v10

    .line 2317
    goto :goto_2

    :cond_5
    move v8, v11

    .line 2319
    goto :goto_2

    .line 2323
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_6
    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_7

    .line 2324
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v10, "SYMBOLS_PAGE"

    invoke-interface {v8, v10, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v8

    goto :goto_2

    .line 2327
    :cond_7
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v9

    array-length v9, v9

    if-le v9, v8, :cond_b

    if-nez v2, :cond_b

    .line 2328
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->isUseGlobalKey()Z

    move-result v8

    if-eqz v8, :cond_8

    move v8, v10

    .line 2329
    goto :goto_2

    .line 2331
    :cond_8
    iget-boolean v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsCommaKeyAsDefault:Z

    if-eqz v8, :cond_a

    if-eqz v1, :cond_9

    if-eqz v4, :cond_a

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v8

    if-nez v8, :cond_a

    .line 2335
    :cond_9
    :try_start_1
    const-string v8, "mode_comma"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    goto :goto_2

    .line 2336
    :catch_1
    move-exception v0

    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    move v8, v11

    .line 2337
    goto :goto_2

    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_a
    move v8, v11

    .line 2340
    goto :goto_2

    .line 2344
    :cond_b
    iget-boolean v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsCommaKeyAsDefault:Z

    if-eqz v8, :cond_d

    if-eqz v1, :cond_c

    if-eqz v4, :cond_d

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v8

    if-nez v8, :cond_d

    .line 2348
    :cond_c
    :try_start_2
    const-string v8, "mode_comma"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v8

    goto/16 :goto_2

    .line 2349
    :catch_2
    move-exception v0

    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    move v8, v11

    .line 2350
    goto/16 :goto_2

    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_d
    move v8, v11

    .line 2353
    goto/16 :goto_2
.end method

.method private getNumberKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 11

    .prologue
    .line 471
    const-string v8, "SamsungIME"

    const-string v9, "getNumberKeyboard"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 475
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getPhonePadNumberKeyboardXmlId()I

    move-result v7

    .line 476
    .local v7, "xmlId":I
    const/4 v6, 0x0

    .line 477
    .local v6, "modeId":I
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    .line 478
    .local v5, "method":I
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "INPUT_LANGUAGE"

    const v10, 0x656e4742

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    .line 480
    .local v4, "language":I
    if-nez v7, :cond_0

    .line 481
    if-nez v5, :cond_1d

    .line 482
    const-string v8, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 484
    invoke-static {v4}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 485
    const v7, 0x7f050239

    .line 552
    :goto_0
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "SYMBOLS_PAGE"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v6

    .line 634
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v8, v7, :cond_1

    iget v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v8, v6, :cond_1

    iget-boolean v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v9

    if-eq v8, v9, :cond_33

    .line 636
    :cond_1
    if-eqz v6, :cond_32

    .line 638
    :try_start_0
    new-instance v8, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v7, v6}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    .line 650
    :goto_2
    iget-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-direct {p0, v8, v7, v6}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    .line 654
    :goto_3
    iget-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    return-object v8

    .line 487
    :cond_2
    const v7, 0x7f050238

    goto :goto_0

    .line 490
    :cond_3
    const/high16 v8, 0x61720000

    if-ne v4, v8, :cond_4

    .line 491
    const v7, 0x7f050230

    goto :goto_0

    .line 492
    :cond_4
    const/high16 v8, 0x66610000

    if-ne v4, v8, :cond_5

    .line 493
    const v7, 0x7f050236

    goto :goto_0

    .line 494
    :cond_5
    const/high16 v8, 0x75720000

    if-ne v4, v8, :cond_6

    .line 495
    const v7, 0x7f050248

    goto :goto_0

    .line 496
    :cond_6
    const/high16 v8, 0x6b6d0000

    if-ne v4, v8, :cond_7

    .line 497
    const v7, 0x7f05023c

    goto :goto_0

    .line 498
    :cond_7
    const/high16 v8, 0x6c6f0000

    if-ne v4, v8, :cond_8

    .line 499
    const v7, 0x7f05023e

    goto :goto_0

    .line 500
    :cond_8
    const v8, 0x6d795a57

    if-ne v4, v8, :cond_9

    .line 501
    const v7, 0x7f050249

    goto :goto_0

    .line 502
    :cond_9
    const/high16 v8, 0x74680000

    if-ne v4, v8, :cond_a

    .line 503
    const v7, 0x7f050247

    goto :goto_0

    .line 504
    :cond_a
    const/high16 v8, 0x68690000

    if-ne v4, v8, :cond_b

    .line 505
    const v7, 0x7f05023b

    goto :goto_0

    .line 506
    :cond_b
    const/high16 v8, 0x626e0000

    if-ne v4, v8, :cond_c

    .line 507
    const v7, 0x7f050234

    goto/16 :goto_0

    .line 508
    :cond_c
    const/high16 v8, 0x67750000

    if-ne v4, v8, :cond_d

    .line 509
    const v7, 0x7f050237

    goto/16 :goto_0

    .line 510
    :cond_d
    const/high16 v8, 0x6b6e0000

    if-ne v4, v8, :cond_e

    .line 511
    const v7, 0x7f05023d

    goto/16 :goto_0

    .line 512
    :cond_e
    const/high16 v8, 0x6d6c0000

    if-ne v4, v8, :cond_f

    .line 513
    const v7, 0x7f05023f

    goto/16 :goto_0

    .line 514
    :cond_f
    const/high16 v8, 0x6d720000

    if-ne v4, v8, :cond_10

    .line 515
    const v7, 0x7f050240

    goto/16 :goto_0

    .line 516
    :cond_10
    const/high16 v8, 0x70610000

    if-ne v4, v8, :cond_11

    .line 517
    const v7, 0x7f050243

    goto/16 :goto_0

    .line 518
    :cond_11
    const/high16 v8, 0x73690000

    if-ne v4, v8, :cond_12

    .line 519
    const v7, 0x7f050244

    goto/16 :goto_0

    .line 520
    :cond_12
    const/high16 v8, 0x74650000

    if-ne v4, v8, :cond_13

    .line 521
    const v7, 0x7f050246

    goto/16 :goto_0

    .line 522
    :cond_13
    const/high16 v8, 0x74610000

    if-ne v4, v8, :cond_14

    .line 523
    const v7, 0x7f050245

    goto/16 :goto_0

    .line 524
    :cond_14
    const/high16 v8, 0x61730000

    if-ne v4, v8, :cond_15

    .line 525
    const v7, 0x7f050231

    goto/16 :goto_0

    .line 526
    :cond_15
    const/high16 v8, 0x6e650000

    if-ne v4, v8, :cond_16

    .line 527
    const v7, 0x7f050241

    goto/16 :goto_0

    .line 528
    :cond_16
    const/high16 v8, 0x6f720000

    if-ne v4, v8, :cond_17

    .line 529
    const v7, 0x7f050242

    goto/16 :goto_0

    .line 530
    :cond_17
    const/high16 v8, 0x65730000

    if-eq v4, v8, :cond_18

    const v8, 0x65734553

    if-eq v4, v8, :cond_18

    const v8, 0x65735553

    if-ne v4, v8, :cond_19

    :cond_18
    iget-boolean v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->ADD_SMILEY_SYMBOL:Z

    if-nez v8, :cond_19

    .line 534
    :try_start_1
    const-string v8, "qwerty_number_symbols_es"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    goto/16 :goto_0

    .line 535
    :catch_0
    move-exception v1

    .line 536
    .local v1, "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f05022e

    .line 537
    goto/16 :goto_0

    .line 538
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_19
    iget-boolean v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    if-eqz v8, :cond_1a

    .line 539
    const v7, 0x7f050232

    goto/16 :goto_0

    .line 540
    :cond_1a
    iget-boolean v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    if-eqz v8, :cond_1b

    .line 541
    const v7, 0x7f050233

    goto/16 :goto_0

    .line 542
    :cond_1b
    iget-boolean v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->ADD_SMILEY_SYMBOL:Z

    if-eqz v8, :cond_1c

    .line 544
    :try_start_2
    const-string v8, "qwerty_number_symbols_add_smiley"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v7

    goto/16 :goto_0

    .line 545
    :catch_1
    move-exception v1

    .line 546
    .restart local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f05022e

    .line 547
    goto/16 :goto_0

    .line 549
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_1c
    const v7, 0x7f05022e

    goto/16 :goto_0

    .line 554
    :cond_1d
    const/4 v8, 0x1

    if-ne v5, v8, :cond_25

    .line 555
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v8

    if-eqz v8, :cond_20

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_20

    .line 557
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v3

    .line 558
    .local v3, "keypadType":I
    const/4 v8, 0x1

    if-ne v3, v8, :cond_1e

    .line 559
    const v7, 0x7f0501bb

    .line 593
    .end local v3    # "keypadType":I
    :goto_4
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getNumberKeyboardModeId()I

    move-result v6

    goto/16 :goto_1

    .line 560
    .restart local v3    # "keypadType":I
    :cond_1e
    const/4 v8, 0x2

    if-ne v3, v8, :cond_1f

    .line 561
    const v7, 0x7f0501bd

    goto :goto_4

    .line 563
    :cond_1f
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v2

    .line 564
    .local v2, "hangulModule":I
    packed-switch v2, :pswitch_data_0

    .line 572
    const v7, 0x7f0501bb

    goto :goto_4

    .line 566
    :pswitch_0
    const v7, 0x7f0501bb

    .line 567
    goto :goto_4

    .line 569
    :pswitch_1
    const v7, 0x7f0501bd

    .line 570
    goto :goto_4

    .line 578
    .end local v2    # "hangulModule":I
    .end local v3    # "keypadType":I
    :cond_20
    const/high16 v8, 0x6b6d0000

    if-ne v4, v8, :cond_21

    .line 579
    :try_start_3
    const-string v8, "phonepad_number_km"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_4

    .line 580
    :cond_21
    const/high16 v8, 0x6c6f0000

    if-ne v4, v8, :cond_22

    .line 581
    const-string v8, "phonepad_number_lo"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_4

    .line 582
    :cond_22
    const/high16 v8, 0x61720000

    if-ne v4, v8, :cond_23

    .line 583
    const-string v8, "phonepad_number_arabic"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_4

    .line 584
    :cond_23
    const/high16 v8, 0x66610000

    if-ne v4, v8, :cond_24

    .line 585
    const-string v8, "phonepad_number_farsi"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v7

    goto :goto_4

    .line 587
    :cond_24
    const v7, 0x7f0501cc

    goto :goto_4

    .line 589
    :catch_2
    move-exception v0

    .line 590
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f0501cc

    goto :goto_4

    .line 594
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_25
    const/4 v8, 0x2

    if-ne v5, v8, :cond_26

    .line 595
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getHWRKeyboardXmlId()I

    move-result v7

    .line 596
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getHwrKeyboardModeId()I

    move-result v6

    goto/16 :goto_1

    .line 597
    :cond_26
    const/4 v8, 0x4

    if-ne v5, v8, :cond_27

    .line 598
    const v7, 0x7f0500d7

    .line 599
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getHwrKeyboardModeId()I

    move-result v6

    goto/16 :goto_1

    .line 601
    :cond_27
    const-string v8, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 603
    invoke-static {v4}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 604
    const v7, 0x7f050239

    .line 629
    :goto_5
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "SYMBOLS_PAGE"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v6

    goto/16 :goto_1

    .line 606
    :cond_28
    const v7, 0x7f050238

    goto :goto_5

    .line 609
    :cond_29
    const/high16 v8, 0x61720000

    if-ne v4, v8, :cond_2a

    .line 610
    const v7, 0x7f050230

    goto :goto_5

    .line 611
    :cond_2a
    const/high16 v8, 0x66610000

    if-ne v4, v8, :cond_2b

    .line 612
    const v7, 0x7f050236

    goto :goto_5

    .line 613
    :cond_2b
    const/high16 v8, 0x75720000

    if-ne v4, v8, :cond_2c

    .line 614
    const v7, 0x7f050248

    goto :goto_5

    .line 615
    :cond_2c
    const/high16 v8, 0x6b6d0000

    if-ne v4, v8, :cond_2d

    .line 616
    const v7, 0x7f05023c

    goto :goto_5

    .line 617
    :cond_2d
    const/high16 v8, 0x6c6f0000

    if-ne v4, v8, :cond_2e

    .line 618
    const v7, 0x7f05023e

    goto :goto_5

    .line 619
    :cond_2e
    const v8, 0x6d795a57

    if-ne v4, v8, :cond_2f

    .line 620
    const v7, 0x7f050249

    goto :goto_5

    .line 621
    :cond_2f
    iget-boolean v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    if-eqz v8, :cond_30

    .line 622
    const v7, 0x7f050232

    goto :goto_5

    .line 623
    :cond_30
    iget-boolean v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    if-eqz v8, :cond_31

    .line 624
    const v7, 0x7f050233

    goto :goto_5

    .line 626
    :cond_31
    const v7, 0x7f05022e

    goto :goto_5

    .line 639
    :catch_3
    move-exception v0

    .line 640
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v8, "SamsungIME"

    const-string v9, "OutOfMemoryError occurs in DefaultKeyboard"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 644
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_32
    :try_start_4
    new-instance v8, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v7}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_2

    .line 645
    :catch_4
    move-exception v0

    .line 646
    .restart local v0    # "e":Ljava/lang/OutOfMemoryError;
    const-string v8, "SamsungIME"

    const-string v9, "OutOfMemoryError occurs in DefaultKeyboard"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 652
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_33
    iget-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iput-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_3

    .line 564
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getNumberKeyboardModeId()I
    .locals 12

    .prologue
    const v8, 0x7f0800dc

    const/4 v4, 0x0

    const v10, 0x7f0800da

    const/4 v7, 0x1

    const v9, 0x7f0800db

    .line 870
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    .line 871
    .local v6, "preference":Landroid/content/SharedPreferences;
    const-string v11, "da_mode"

    invoke-interface {v6, v11, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 872
    .local v2, "isDaMode":Z
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v3

    .line 873
    .local v3, "isEmailMode":Z
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v5

    .line 874
    .local v5, "isUrlMode":Z
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    .line 875
    .local v1, "inputMethod":I
    const/16 v11, 0x8

    if-ne v1, v11, :cond_0

    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v11

    if-nez v11, :cond_0

    move v4, v7

    .line 877
    .local v4, "isFloatingQwertyKeyboard":Z
    :cond_0
    iget-boolean v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-nez v11, :cond_d

    .line 878
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v11

    array-length v11, v11

    if-le v11, v7, :cond_8

    if-nez v2, :cond_8

    .line 879
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->isUseGlobalKey()Z

    move-result v7

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-nez v7, :cond_5

    .line 880
    if-eqz v3, :cond_1

    .line 881
    const v7, 0x7f0800dd

    .line 939
    :goto_0
    return v7

    .line 882
    :cond_1
    if-eqz v5, :cond_2

    move v7, v8

    .line 883
    goto :goto_0

    .line 885
    :cond_2
    iget-boolean v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsCommaKeyAsDefault:Z

    if-eqz v7, :cond_4

    if-eqz v1, :cond_3

    if-eqz v4, :cond_4

    .line 888
    :cond_3
    :try_start_0
    const-string v7, "mode_comma"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    goto :goto_0

    .line 889
    :catch_0
    move-exception v0

    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    move v7, v9

    .line 890
    goto :goto_0

    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_4
    move v7, v9

    .line 893
    goto :goto_0

    .line 897
    :cond_5
    if-eqz v3, :cond_6

    .line 898
    const v7, 0x7f0800df

    goto :goto_0

    .line 899
    :cond_6
    if-eqz v5, :cond_7

    .line 900
    const v7, 0x7f0800de

    goto :goto_0

    :cond_7
    move v7, v10

    .line 902
    goto :goto_0

    .line 906
    :cond_8
    if-eqz v3, :cond_9

    .line 907
    const v7, 0x7f0800dd

    goto :goto_0

    .line 908
    :cond_9
    if-eqz v5, :cond_a

    move v7, v8

    .line 909
    goto :goto_0

    .line 911
    :cond_a
    iget-boolean v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsCommaKeyAsDefault:Z

    if-eqz v7, :cond_c

    if-eqz v1, :cond_b

    if-eqz v4, :cond_c

    .line 914
    :cond_b
    :try_start_1
    const-string v7, "mode_comma"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    goto :goto_0

    .line 915
    :catch_1
    move-exception v0

    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    move v7, v9

    .line 916
    goto :goto_0

    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_c
    move v7, v9

    .line 919
    goto :goto_0

    .line 924
    :cond_d
    iget-boolean v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-eqz v8, :cond_f

    .line 925
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v8

    if-ne v8, v7, :cond_e

    iget-boolean v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsKorMode:Z

    if-nez v7, :cond_e

    .line 928
    :try_start_2
    const-string v7, "mode_ip_address"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    goto :goto_0

    .line 929
    :catch_2
    move-exception v0

    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    move v7, v10

    .line 930
    goto :goto_0

    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_e
    move v7, v10

    .line 933
    goto :goto_0

    .line 936
    :cond_f
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v8

    array-length v8, v8

    if-le v8, v7, :cond_10

    if-nez v2, :cond_10

    move v7, v10

    .line 937
    goto :goto_0

    :cond_10
    move v7, v9

    .line 939
    goto :goto_0
.end method

.method private getNumberPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 11
    .param p1, "bIsLeftSplitKeyboard"    # Z

    .prologue
    .line 6947
    const-string v8, "SamsungIME"

    const-string v9, "getNumberPopupKeyboard"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6949
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 6950
    const/4 v7, 0x0

    .line 6951
    .local v7, "xmlId":I
    const/4 v4, 0x0

    .line 6953
    .local v4, "modeId":I
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v3

    .line 6954
    .local v3, "method":I
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v5

    .line 6955
    .local v5, "privateImeOptionsInputType":I
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "INPUT_LANGUAGE"

    const v10, 0x656e4742

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    .line 6956
    .local v2, "language":I
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 6958
    .local v1, "info":Landroid/view/inputmethod/EditorInfo;
    const/16 v8, 0xa

    if-ne v5, v8, :cond_4

    .line 6959
    const/4 v8, 0x7

    if-ne v3, v8, :cond_3

    .line 6960
    if-eqz p1, :cond_2

    .line 6962
    :try_start_0
    const-string v8, "split_month_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 7322
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v8, v7, :cond_1

    iget v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v8, v4, :cond_1

    iget-boolean v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v9

    if-eq v8, v9, :cond_50

    .line 7324
    :cond_1
    if-eqz v4, :cond_4f

    .line 7325
    new-instance v8, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v7, v4}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 7330
    :goto_1
    iget-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-direct {p0, v8, v7, v4}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    .line 7335
    :goto_2
    iget-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    :goto_3
    return-object v8

    .line 6963
    :catch_0
    move-exception v0

    .line 6964
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f0501c7

    .line 6965
    goto :goto_0

    .line 6968
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    :try_start_1
    const-string v8, "split_month_right"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    goto :goto_0

    .line 6969
    :catch_1
    move-exception v0

    .line 6970
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f0501c7

    .line 6971
    goto :goto_0

    .line 6973
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    const/16 v8, 0x8

    if-ne v3, v8, :cond_0

    .line 6975
    :try_start_2
    const-string v8, "floating_month"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    goto :goto_0

    .line 6976
    :catch_2
    move-exception v0

    .line 6977
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f0501c7

    .line 6978
    goto :goto_0

    .line 6980
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_4
    const/16 v8, 0x9

    if-eq v5, v8, :cond_5

    const/16 v8, 0xe

    if-ne v5, v8, :cond_8

    .line 6982
    :cond_5
    const/4 v8, 0x7

    if-ne v3, v8, :cond_7

    .line 6983
    if-eqz p1, :cond_6

    .line 6985
    :try_start_3
    const-string v8, "split_yeardatetime_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v7

    goto :goto_0

    .line 6986
    :catch_3
    move-exception v0

    .line 6987
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f0501d6

    .line 6988
    goto :goto_0

    .line 6991
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_6
    :try_start_4
    const-string v8, "split_yeardatetime_right"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v7

    goto :goto_0

    .line 6992
    :catch_4
    move-exception v0

    .line 6993
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f0501d6

    .line 6994
    goto :goto_0

    .line 6996
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_7
    const/16 v8, 0x8

    if-ne v3, v8, :cond_0

    .line 6998
    :try_start_5
    const-string v8, "floating_yeardatetime"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v7

    goto :goto_0

    .line 6999
    :catch_5
    move-exception v0

    .line 7000
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f0501f6

    .line 7001
    goto :goto_0

    .line 7003
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v8, 0x2

    if-eq v3, v8, :cond_b

    .line 7005
    const/4 v8, 0x7

    if-ne v3, v8, :cond_a

    .line 7006
    if-eqz p1, :cond_9

    .line 7008
    :try_start_6
    const-string v8, "split_phone_number_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v7

    goto/16 :goto_0

    .line 7009
    :catch_6
    move-exception v0

    .line 7010
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f0501d6

    .line 7011
    goto/16 :goto_0

    .line 7014
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_9
    :try_start_7
    const-string v8, "split_phone_number_right"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v7

    goto/16 :goto_0

    .line 7015
    :catch_7
    move-exception v0

    .line 7016
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f0501d6

    .line 7017
    goto/16 :goto_0

    .line 7019
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_a
    const/16 v8, 0x8

    if-ne v3, v8, :cond_0

    .line 7021
    :try_start_8
    const-string v8, "floating_phone_number"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v7

    goto/16 :goto_0

    .line 7022
    :catch_8
    move-exception v0

    .line 7023
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f0501d6

    .line 7024
    goto/16 :goto_0

    .line 7026
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_b
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isTabletPhonepadNumberInputMode()Z

    move-result v8

    if-eqz v8, :cond_23

    .line 7027
    const/4 v8, 0x1

    if-ne v5, v8, :cond_e

    const/4 v8, 0x2

    if-eq v3, v8, :cond_e

    .line 7030
    const/4 v8, 0x7

    if-ne v3, v8, :cond_d

    .line 7031
    if-eqz p1, :cond_c

    .line 7032
    :try_start_9
    const-string v8, "split_number_decimal_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    .line 7034
    :cond_c
    const-string v8, "split_number_decimal_right"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    .line 7037
    :cond_d
    const-string v8, "floating_number_decimal"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_9

    move-result v7

    goto/16 :goto_0

    .line 7039
    :catch_9
    move-exception v0

    .line 7040
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f0501ce

    .line 7041
    goto/16 :goto_0

    .line 7042
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_e
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDecimalNumberInputType()Z

    move-result v8

    if-eqz v8, :cond_11

    const/4 v8, 0x2

    if-eq v3, v8, :cond_11

    .line 7045
    const/4 v8, 0x7

    if-ne v3, v8, :cond_10

    .line 7046
    if-eqz p1, :cond_f

    .line 7047
    :try_start_a
    const-string v8, "split_number_decimal_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    .line 7049
    :cond_f
    const-string v8, "split_number_decimal_right"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    .line 7052
    :cond_10
    const-string v8, "floating_number_decimal"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_a

    move-result v7

    goto/16 :goto_0

    .line 7054
    :catch_a
    move-exception v0

    .line 7055
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f0501ce

    .line 7056
    goto/16 :goto_0

    .line 7057
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_11
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberOnlyInputType()Z

    move-result v8

    if-eqz v8, :cond_14

    const/4 v8, 0x2

    if-eq v3, v8, :cond_14

    .line 7060
    const/4 v8, 0x7

    if-ne v3, v8, :cond_13

    .line 7061
    if-eqz p1, :cond_12

    .line 7062
    :try_start_b
    const-string v8, "split_number_only_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    .line 7064
    :cond_12
    const-string v8, "split_number_only_right"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    .line 7067
    :cond_13
    const-string v8, "floating_number_only"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_b

    move-result v7

    goto/16 :goto_0

    .line 7069
    :catch_b
    move-exception v0

    .line 7070
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f0501d2

    .line 7071
    goto/16 :goto_0

    .line 7072
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_14
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isSignedNumberInputType()Z

    move-result v8

    if-eqz v8, :cond_17

    const/4 v8, 0x2

    if-eq v3, v8, :cond_17

    .line 7075
    const/4 v8, 0x7

    if-ne v3, v8, :cond_16

    .line 7076
    if-eqz p1, :cond_15

    .line 7077
    :try_start_c
    const-string v8, "split_number_signed_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    .line 7079
    :cond_15
    const-string v8, "split_number_signed_right"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    .line 7082
    :cond_16
    const-string v8, "floating_number_signed"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_c

    move-result v7

    goto/16 :goto_0

    .line 7084
    :catch_c
    move-exception v0

    .line 7085
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f0501d4

    .line 7086
    goto/16 :goto_0

    .line 7087
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_17
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isSignedDecimalNumberInputType()Z

    move-result v8

    if-eqz v8, :cond_1a

    const/4 v8, 0x2

    if-eq v3, v8, :cond_1a

    .line 7090
    const/4 v8, 0x7

    if-ne v3, v8, :cond_19

    .line 7091
    if-eqz p1, :cond_18

    .line 7092
    :try_start_d
    const-string v8, "split_number_signed_decimal_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    .line 7094
    :cond_18
    const-string v8, "split_number_signed_decimal_right"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    .line 7097
    :cond_19
    const-string v8, "floating_number_signed_decimal"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_d

    move-result v7

    goto/16 :goto_0

    .line 7099
    :catch_d
    move-exception v0

    .line 7100
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f0501d5

    .line 7101
    goto/16 :goto_0

    .line 7102
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_1a
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isTimeInputType()Z

    move-result v8

    if-eqz v8, :cond_1d

    const/4 v8, 0x2

    if-eq v3, v8, :cond_1d

    .line 7105
    const/4 v8, 0x7

    if-ne v3, v8, :cond_1c

    .line 7106
    if-eqz p1, :cond_1b

    .line 7107
    :try_start_e
    const-string v8, "split_time_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    .line 7109
    :cond_1b
    const-string v8, "split_time_right"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    .line 7112
    :cond_1c
    const-string v8, "floating_time"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_e

    move-result v7

    goto/16 :goto_0

    .line 7114
    :catch_e
    move-exception v0

    .line 7115
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f0501ee

    .line 7116
    goto/16 :goto_0

    .line 7117
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_1d
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDateInputType()Z

    move-result v8

    if-eqz v8, :cond_20

    const/4 v8, 0x2

    if-eq v3, v8, :cond_20

    .line 7120
    const/4 v8, 0x7

    if-ne v3, v8, :cond_1f

    .line 7121
    if-eqz p1, :cond_1e

    .line 7122
    :try_start_f
    const-string v8, "split_date_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    .line 7124
    :cond_1e
    const-string v8, "split_date_right"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    .line 7127
    :cond_1f
    const-string v8, "floating_date"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_f} :catch_f

    move-result v7

    goto/16 :goto_0

    .line 7129
    :catch_f
    move-exception v0

    .line 7130
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f0501a0

    .line 7131
    goto/16 :goto_0

    .line 7132
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_20
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDateTimeInputType()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    if-eq v3, v8, :cond_0

    .line 7135
    const/4 v8, 0x7

    if-ne v3, v8, :cond_22

    .line 7136
    if-eqz p1, :cond_21

    .line 7137
    :try_start_10
    const-string v8, "split_datetime_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    .line 7139
    :cond_21
    const-string v8, "split_datetime_right"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    .line 7142
    :cond_22
    const-string v8, "floating_datetime"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_10} :catch_10

    move-result v7

    goto/16 :goto_0

    .line 7144
    :catch_10
    move-exception v0

    .line 7145
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f0501a1

    .line 7146
    goto/16 :goto_0

    .line 7149
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_23
    const/4 v8, 0x7

    if-ne v3, v8, :cond_41

    .line 7150
    if-eqz p1, :cond_2b

    .line 7152
    const/high16 v8, 0x61720000

    if-ne v2, v8, :cond_25

    .line 7153
    :try_start_11
    const-string v8, "split_number_symbols_left_arabic"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_11} :catch_11

    move-result v7

    .line 7233
    :cond_24
    :goto_4
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "SYMBOLS_PAGE"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v4

    goto/16 :goto_0

    .line 7154
    :cond_25
    const/high16 v8, 0x66610000

    if-ne v2, v8, :cond_26

    .line 7155
    :try_start_12
    const-string v8, "split_number_symbols_left_farsi"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_4

    .line 7156
    :cond_26
    const/high16 v8, 0x75720000

    if-ne v2, v8, :cond_27

    .line 7157
    const-string v8, "split_number_symbols_left_urdu"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_4

    .line 7158
    :cond_27
    const/high16 v8, 0x6b6d0000

    if-ne v2, v8, :cond_28

    .line 7160
    const-string v8, "split_number_symbols_left_km"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_4

    .line 7161
    :cond_28
    invoke-static {v2}, Lcom/diotek/ime/framework/util/Utils;->isLaoLanguage(I)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 7162
    const-string v8, "split_number_symbols_left_lo"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_4

    .line 7163
    :cond_29
    const v8, 0x6d795a57

    if-ne v2, v8, :cond_2a

    .line 7164
    const-string v8, "split_number_symbols_left_zw"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_4

    .line 7166
    :cond_2a
    const-string v8, "split_number_symbols_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_12} :catch_11

    move-result v7

    goto :goto_4

    .line 7168
    :catch_11
    move-exception v0

    .line 7169
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f05022e

    .line 7170
    goto :goto_4

    .line 7173
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_2b
    const/high16 v8, 0x61720000

    if-ne v2, v8, :cond_2c

    .line 7174
    :try_start_13
    const-string v8, "split_number_symbols_left_arabic"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_13} :catch_12

    move-result v7

    .line 7223
    :goto_5
    const v8, 0x7f05022e

    if-ne v7, v8, :cond_24

    .line 7224
    const/4 v6, 0x0

    .line 7226
    .local v6, "secXmlId":I
    :try_start_14
    const-string v8, "split_number_symbols_right"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14 .. :try_end_14} :catch_14

    move-result v6

    .line 7227
    move v7, v6

    goto :goto_4

    .line 7175
    .end local v6    # "secXmlId":I
    :cond_2c
    const/high16 v8, 0x66610000

    if-ne v2, v8, :cond_2d

    .line 7176
    :try_start_15
    const-string v8, "split_number_symbols_left_farsi"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    .line 7177
    :cond_2d
    const/high16 v8, 0x75720000

    if-ne v2, v8, :cond_2e

    .line 7178
    const-string v8, "split_number_symbols_left_urdu"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    .line 7179
    :cond_2e
    const/high16 v8, 0x6b6d0000

    if-ne v2, v8, :cond_2f

    .line 7181
    const-string v8, "split_number_symbols_right_km"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    .line 7182
    :cond_2f
    invoke-static {v2}, Lcom/diotek/ime/framework/util/Utils;->isLaoLanguage(I)Z

    move-result v8

    if-eqz v8, :cond_30

    .line 7183
    const-string v8, "split_number_symbols_right_lo"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    .line 7184
    :cond_30
    const v8, 0x6d795a57

    if-ne v2, v8, :cond_31

    .line 7185
    const-string v8, "split_number_symbols_right_zw"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    .line 7186
    :cond_31
    const/high16 v8, 0x68690000

    if-ne v2, v8, :cond_32

    .line 7187
    const-string v8, "split_number_symbols_right_hi"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    .line 7188
    :cond_32
    const/high16 v8, 0x626e0000

    if-ne v2, v8, :cond_33

    .line 7189
    const-string v8, "split_number_symbols_right_bn"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    .line 7190
    :cond_33
    const/high16 v8, 0x67750000

    if-ne v2, v8, :cond_34

    .line 7191
    const-string v8, "split_number_symbols_right_gu"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    .line 7192
    :cond_34
    const/high16 v8, 0x74610000

    if-ne v2, v8, :cond_35

    .line 7193
    const-string v8, "split_number_symbols_right_ta"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    .line 7194
    :cond_35
    const/high16 v8, 0x6b6e0000

    if-ne v2, v8, :cond_36

    .line 7195
    const-string v8, "split_number_symbols_right_kn"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    .line 7196
    :cond_36
    const/high16 v8, 0x74650000

    if-ne v2, v8, :cond_37

    .line 7197
    const-string v8, "split_number_symbols_right_te"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_5

    .line 7198
    :cond_37
    const/high16 v8, 0x6d6c0000

    if-ne v2, v8, :cond_38

    .line 7199
    const-string v8, "split_number_symbols_right_ml"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_5

    .line 7200
    :cond_38
    const/high16 v8, 0x6d720000

    if-ne v2, v8, :cond_39

    .line 7201
    const-string v8, "split_number_symbols_right_mr"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_5

    .line 7202
    :cond_39
    const/high16 v8, 0x70610000

    if-ne v2, v8, :cond_3a

    .line 7203
    const-string v8, "split_number_symbols_right_pa"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_5

    .line 7204
    :cond_3a
    const/high16 v8, 0x73690000

    if-ne v2, v8, :cond_3b

    .line 7205
    const-string v8, "split_number_symbols_right_si"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_5

    .line 7206
    :cond_3b
    const/high16 v8, 0x61730000

    if-ne v2, v8, :cond_3c

    .line 7207
    const-string v8, "split_number_symbols_right_as"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_5

    .line 7208
    :cond_3c
    const/high16 v8, 0x6e650000

    if-ne v2, v8, :cond_3d

    .line 7209
    const-string v8, "split_number_symbols_right_ne"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_5

    .line 7210
    :cond_3d
    const/high16 v8, 0x6f720000

    if-ne v2, v8, :cond_3e

    .line 7211
    const-string v8, "split_number_symbols_right_or"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_5

    .line 7212
    :cond_3e
    const/high16 v8, 0x65730000

    if-eq v2, v8, :cond_3f

    const v8, 0x65734553

    if-eq v2, v8, :cond_3f

    const v8, 0x65735553

    if-ne v2, v8, :cond_40

    .line 7215
    :cond_3f
    const-string v8, "split_number_symbols_right_es"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_5

    .line 7217
    :cond_40
    const-string v8, "split_number_symbols_right"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_15} :catch_12

    move-result v7

    goto/16 :goto_5

    .line 7219
    :catch_12
    move-exception v0

    .line 7220
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f05022e

    goto/16 :goto_5

    .line 7235
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_41
    const/16 v8, 0x8

    if-ne v3, v8, :cond_4e

    .line 7236
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v8

    if-eqz v8, :cond_42

    .line 7237
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getFloatingHWRKeyboardXmlId()I

    move-result v7

    .line 7238
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getHwrKeyboardModeId()I

    move-result v4

    goto/16 :goto_0

    .line 7281
    :cond_42
    const/4 v8, 0x1

    if-ne v5, v8, :cond_43

    .line 7282
    :try_start_16
    const-string v8, "floating_phonepad_number_decimal"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_16} :catch_13

    move-result v7

    .line 7312
    :goto_6
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getNumberKeyboardModeId()I

    move-result v4

    goto/16 :goto_0

    .line 7283
    :cond_43
    :try_start_17
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDecimalNumberInputType()Z

    move-result v8

    if-eqz v8, :cond_44

    .line 7284
    const-string v8, "floating_phonepad_number_decimal"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_6

    .line 7285
    :cond_44
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberPasswordInputType()Z

    move-result v8

    if-eqz v8, :cond_45

    iget-boolean v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->IS_FHD:Z

    if-eqz v8, :cond_45

    .line 7286
    const-string v8, "floating_phonepad_number_password"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_6

    .line 7287
    :cond_45
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberOnlyInputType()Z

    move-result v8

    if-eqz v8, :cond_46

    .line 7288
    const-string v8, "floating_phonepad_number_only"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_6

    .line 7289
    :cond_46
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isSignedNumberInputType()Z

    move-result v8

    if-eqz v8, :cond_47

    .line 7290
    const-string v8, "floating_phonepad_number_signed"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_6

    .line 7291
    :cond_47
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isSignedDecimalNumberInputType()Z

    move-result v8

    if-eqz v8, :cond_48

    .line 7292
    const-string v8, "floating_phonepad_number_signed_decimal"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_6

    .line 7293
    :cond_48
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isTimeInputType()Z

    move-result v8

    if-eqz v8, :cond_49

    .line 7294
    const-string v8, "floating_phonepad_time"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_6

    .line 7295
    :cond_49
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDateInputType()Z

    move-result v8

    if-eqz v8, :cond_4a

    .line 7296
    const-string v8, "floating_phonepad_date"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_6

    .line 7297
    :cond_4a
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDateTimeInputType()Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 7298
    const-string v8, "floating_phonepad_datetime"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_6

    .line 7300
    :cond_4b
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v8

    if-eqz v8, :cond_4c

    .line 7301
    const-string v8, "floating_kr_cji_number"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_6

    .line 7303
    :cond_4c
    iget v8, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v8, v8, 0xff0

    const/16 v9, 0x70

    if-ne v8, v9, :cond_4d

    .line 7304
    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getSymbolPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v8

    goto/16 :goto_3

    .line 7306
    :cond_4d
    const-string v8, "floating_phonepad_number"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_17} :catch_13

    move-result v7

    goto/16 :goto_6

    .line 7309
    :catch_13
    move-exception v0

    .line 7310
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f0501cc

    goto/16 :goto_6

    .line 7316
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_4e
    const v7, 0x7f05022e

    .line 7317
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "SYMBOLS_PAGE"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v4

    goto/16 :goto_0

    .line 7327
    :cond_4f
    new-instance v8, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v7}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_1

    .line 7332
    :cond_50
    iget-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iput-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_2

    .line 7228
    .restart local v6    # "secXmlId":I
    :catch_14
    move-exception v8

    goto/16 :goto_4
.end method

.method private getOneHandNumberKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 13

    .prologue
    const/high16 v12, 0x6c6f0000

    const/high16 v11, 0x6b6d0000

    const/4 v10, 0x0

    const/high16 v9, 0x66610000

    const/high16 v8, 0x61720000

    .line 658
    const-string v5, "SamsungIME"

    const-string v6, "getNumberNoHwrKeyboard"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 661
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getPhonePadNumberKeyboardXmlId()I

    move-result v4

    .line 662
    .local v4, "xmlId":I
    const/4 v3, 0x0

    .line 663
    .local v3, "modeId":I
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    .line 664
    .local v2, "method":I
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    const v7, 0x656e4742

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    .line 666
    .local v1, "language":I
    if-nez v4, :cond_1

    .line 667
    if-nez v2, :cond_c

    .line 668
    const-string v5, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 670
    invoke-static {v1}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 672
    :try_start_0
    const-string v5, "one_hand_qwerty_number_symbols_he_arabic"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 729
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SYMBOLS_PAGE"

    invoke-interface {v5, v6, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v3

    .line 797
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v5, v4, :cond_2

    iget v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v5, v3, :cond_2

    iget-boolean v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v6

    if-eq v5, v6, :cond_1a

    .line 799
    :cond_2
    if-eqz v3, :cond_19

    .line 800
    new-instance v5, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v4, v3}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 805
    :goto_2
    iget-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-direct {p0, v5, v4, v3}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    .line 810
    :goto_3
    iget-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    return-object v5

    .line 673
    :catch_0
    move-exception v0

    .line 674
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f050239

    .line 675
    goto :goto_0

    .line 678
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    :try_start_1
    const-string v5, "one_hand_qwerty_number_symbols_he"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    goto :goto_0

    .line 679
    :catch_1
    move-exception v0

    .line 680
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f050238

    .line 681
    goto :goto_0

    .line 684
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_4
    invoke-static {v1}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 686
    if-ne v1, v8, :cond_5

    .line 687
    :try_start_2
    const-string v5, "one_hand_qwerty_number_symbols_arabic"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 688
    :cond_5
    if-ne v1, v9, :cond_6

    .line 689
    const-string v5, "one_hand_qwerty_number_symbols_farsi"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 690
    :cond_6
    const/high16 v5, 0x75720000

    if-ne v1, v5, :cond_0

    .line 691
    const-string v5, "one_hand_qwerty_number_symbols_urdu"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    goto :goto_0

    .line 693
    :catch_2
    move-exception v0

    .line 694
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f050230

    .line 695
    goto :goto_0

    .line 696
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_7
    if-ne v1, v11, :cond_8

    .line 698
    :try_start_3
    const-string v5, "one_hand_qwerty_number_symbols_km"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v4

    goto :goto_0

    .line 700
    :catch_3
    move-exception v0

    .line 701
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f05023c

    .line 702
    goto :goto_0

    .line 703
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_8
    if-ne v1, v12, :cond_9

    .line 705
    :try_start_4
    const-string v5, "one_hand_qwerty_number_symbols_lo"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v4

    goto/16 :goto_0

    .line 706
    :catch_4
    move-exception v0

    .line 707
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f05023e

    .line 708
    goto/16 :goto_0

    .line 709
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_9
    const v5, 0x6d795a57

    if-ne v1, v5, :cond_a

    .line 711
    :try_start_5
    const-string v5, "one_hand_qwerty_number_symbols_zw"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v4

    goto/16 :goto_0

    .line 712
    :catch_5
    move-exception v0

    .line 713
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f050249

    .line 714
    goto/16 :goto_0

    .line 715
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_a
    iget-boolean v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->ADD_SMILEY_SYMBOL:Z

    if-eqz v5, :cond_b

    .line 717
    :try_start_6
    const-string v5, "one_hand_qwerty_number_symbols_add_smiley"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v4

    goto/16 :goto_0

    .line 718
    :catch_6
    move-exception v0

    .line 719
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f05022e

    .line 720
    goto/16 :goto_0

    .line 723
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_b
    :try_start_7
    const-string v5, "one_hand_qwerty_number_symbols"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v4

    goto/16 :goto_0

    .line 724
    :catch_7
    move-exception v0

    .line 725
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f05022e

    goto/16 :goto_0

    .line 731
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_c
    const/4 v5, 0x1

    if-ne v2, v5, :cond_11

    .line 733
    if-ne v1, v11, :cond_d

    .line 734
    :try_start_8
    const-string v5, "one_hand_phonepad_number_km"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v4

    .line 747
    :goto_4
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getNumberKeyboardModeId()I

    move-result v3

    goto/16 :goto_1

    .line 735
    :cond_d
    if-ne v1, v12, :cond_e

    .line 736
    :try_start_9
    const-string v5, "one_hand_phonepad_number_lo"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v4

    goto :goto_4

    .line 737
    :cond_e
    if-ne v1, v8, :cond_f

    .line 738
    const-string v5, "one_hand_phonepad_number_arabic"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v4

    goto :goto_4

    .line 739
    :cond_f
    if-ne v1, v9, :cond_10

    .line 740
    const-string v5, "one_hand_phonepad_number_farsi"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v4

    goto :goto_4

    .line 742
    :cond_10
    const-string v5, "one_hand_phonepad_number"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_8

    move-result v4

    goto :goto_4

    .line 744
    :catch_8
    move-exception v0

    .line 745
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0501cc

    goto :goto_4

    .line 749
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_11
    const-string v5, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 751
    invoke-static {v1}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 753
    :try_start_a
    const-string v5, "one_hand_qwerty_number_symbols_he_arabic"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_9

    move-result v4

    .line 757
    :goto_5
    const v4, 0x7f050239

    .line 792
    :cond_12
    :goto_6
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SYMBOLS_PAGE"

    invoke-interface {v5, v6, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v3

    goto/16 :goto_1

    .line 754
    :catch_9
    move-exception v0

    .line 755
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f050239

    goto :goto_5

    .line 760
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_13
    :try_start_b
    const-string v5, "one_hand_qwerty_number_symbols_he"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_a

    move-result v4

    goto :goto_6

    .line 761
    :catch_a
    move-exception v0

    .line 762
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f050238

    .line 763
    goto :goto_6

    .line 766
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_14
    invoke-static {v1}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 768
    if-ne v1, v8, :cond_15

    .line 769
    :try_start_c
    const-string v5, "one_hand_qwerty_number_symbols_arabic"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v4

    goto :goto_6

    .line 770
    :cond_15
    if-ne v1, v9, :cond_16

    .line 771
    const-string v5, "one_hand_qwerty_number_symbols_farsi"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v4

    goto :goto_6

    .line 772
    :cond_16
    const/high16 v5, 0x75720000

    if-ne v1, v5, :cond_12

    .line 773
    const-string v5, "one_hand_qwerty_number_symbols_urdu"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_b

    move-result v4

    goto :goto_6

    .line 775
    :catch_b
    move-exception v0

    .line 776
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f050230

    .line 777
    goto :goto_6

    .line 778
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_17
    iget-boolean v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->ADD_SMILEY_SYMBOL:Z

    if-eqz v5, :cond_18

    .line 780
    :try_start_d
    const-string v5, "one_hand_qwerty_number_symbols_add_smiley"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_c

    move-result v4

    goto :goto_6

    .line 781
    :catch_c
    move-exception v0

    .line 782
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f05022e

    .line 783
    goto :goto_6

    .line 786
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_18
    :try_start_e
    const-string v5, "one_hand_qwerty_number_symbols"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_d

    move-result v4

    goto :goto_6

    .line 787
    :catch_d
    move-exception v0

    .line 788
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f05022e

    goto :goto_6

    .line 802
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_19
    new-instance v5, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v4}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_2

    .line 807
    :cond_1a
    iget-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iput-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_3
.end method

.method private getOneHandPhonepadXmlId(I)I
    .locals 20
    .param p1, "language"    # I

    .prologue
    .line 3685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v13

    .line 3686
    .local v13, "preference":Landroid/content/SharedPreferences;
    const-string v17, "da_mode"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 3687
    .local v5, "isDaMode":Z
    const-string v17, "da_language"

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 3688
    .local v2, "daLanguage":I
    if-eqz v5, :cond_0

    .line 3689
    move/from16 p1, v2

    .line 3691
    :cond_0
    const/high16 v17, -0x10000

    and-int v12, p1, v17

    .line 3692
    .local v12, "langCode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v8

    .line 3694
    .local v8, "isSpellViewShown":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v14

    .line 3695
    .local v14, "strokeModeOn":Z
    const v16, 0x7f0501a4

    .line 3696
    .local v16, "xmlId":I
    sparse-switch v12, :sswitch_data_0

    .line 4274
    :try_start_0
    const-string v17, "one_hand_phonepad_en"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_4c

    move-result v16

    .line 4281
    :goto_0
    return v16

    .line 3699
    :sswitch_0
    :try_start_1
    const-string v17, "one_hand_phonepad_en"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v16

    goto :goto_0

    .line 3700
    :catch_0
    move-exception v3

    .line 3701
    .local v3, "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3703
    goto :goto_0

    .line 3708
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1
    :try_start_2
    const-string v17, "one_hand_phonepad_fr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v16

    goto :goto_0

    .line 3709
    :catch_1
    move-exception v3

    .line 3710
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3712
    goto :goto_0

    .line 3715
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2
    :try_start_3
    const-string v17, "one_hand_phonepad_de"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v16

    goto :goto_0

    .line 3716
    :catch_2
    move-exception v3

    .line 3717
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3719
    goto :goto_0

    .line 3724
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_3
    :try_start_4
    const-string v17, "one_hand_phonepad_es"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v16

    goto :goto_0

    .line 3725
    :catch_3
    move-exception v3

    .line 3726
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3728
    goto :goto_0

    .line 3731
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_4
    :try_start_5
    const-string v17, "one_hand_phonepad_it"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v16

    goto :goto_0

    .line 3732
    :catch_4
    move-exception v3

    .line 3733
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3735
    goto :goto_0

    .line 3738
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_5
    :try_start_6
    const-string v17, "one_hand_phonepad_cs"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    move-result v16

    goto :goto_0

    .line 3739
    :catch_5
    move-exception v3

    .line 3740
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3742
    goto :goto_0

    .line 3745
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_6
    :try_start_7
    const-string v17, "one_hand_phonepad_da"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    move-result v16

    goto :goto_0

    .line 3746
    :catch_6
    move-exception v3

    .line 3747
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3749
    goto :goto_0

    .line 3752
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_7
    :try_start_8
    const-string v17, "one_hand_phonepad_et"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_7

    move-result v16

    goto :goto_0

    .line 3753
    :catch_7
    move-exception v3

    .line 3754
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3756
    goto :goto_0

    .line 3759
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_8
    :try_start_9
    const-string v17, "one_hand_phonepad_hr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_8

    move-result v16

    goto :goto_0

    .line 3760
    :catch_8
    move-exception v3

    .line 3761
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3763
    goto :goto_0

    .line 3766
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_9
    :try_start_a
    const-string v17, "one_hand_phonepad_lv"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_9

    move-result v16

    goto :goto_0

    .line 3767
    :catch_9
    move-exception v3

    .line 3768
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3770
    goto :goto_0

    .line 3773
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_a
    :try_start_b
    const-string v17, "one_hand_phonepad_lt"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_a

    move-result v16

    goto :goto_0

    .line 3774
    :catch_a
    move-exception v3

    .line 3775
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3777
    goto/16 :goto_0

    .line 3780
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_b
    :try_start_c
    const-string v17, "one_hand_phonepad_hu"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_b

    move-result v16

    goto/16 :goto_0

    .line 3781
    :catch_b
    move-exception v3

    .line 3782
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3784
    goto/16 :goto_0

    .line 3787
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_c
    :try_start_d
    const-string v17, "one_hand_phonepad_nb"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_c

    move-result v16

    goto/16 :goto_0

    .line 3788
    :catch_c
    move-exception v3

    .line 3789
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3791
    goto/16 :goto_0

    .line 3794
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_d
    :try_start_e
    const-string v17, "one_hand_phonepad_nl"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_d

    move-result v16

    goto/16 :goto_0

    .line 3795
    :catch_d
    move-exception v3

    .line 3796
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3798
    goto/16 :goto_0

    .line 3801
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_e
    :try_start_f
    const-string v17, "one_hand_phonepad_pl"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_f} :catch_e

    move-result v16

    goto/16 :goto_0

    .line 3802
    :catch_e
    move-exception v3

    .line 3803
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3805
    goto/16 :goto_0

    .line 3810
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_f
    :try_start_10
    const-string v17, "one_hand_phonepad_pt"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_10} :catch_f

    move-result v16

    goto/16 :goto_0

    .line 3811
    :catch_f
    move-exception v3

    .line 3812
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3814
    goto/16 :goto_0

    .line 3817
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_10
    :try_start_11
    const-string v17, "one_hand_phonepad_ro"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_11} :catch_10

    move-result v16

    goto/16 :goto_0

    .line 3818
    :catch_10
    move-exception v3

    .line 3819
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3821
    goto/16 :goto_0

    .line 3824
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_11
    :try_start_12
    const-string v17, "one_hand_phonepad_fi"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_12} :catch_11

    move-result v16

    goto/16 :goto_0

    .line 3825
    :catch_11
    move-exception v3

    .line 3826
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3828
    goto/16 :goto_0

    .line 3831
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_12
    :try_start_13
    const-string v17, "one_hand_phonepad_sr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_13} :catch_12

    move-result v16

    goto/16 :goto_0

    .line 3832
    :catch_12
    move-exception v3

    .line 3833
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3835
    goto/16 :goto_0

    .line 3838
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_13
    :try_start_14
    const-string v17, "one_hand_phonepad_sv"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14 .. :try_end_14} :catch_13

    move-result v16

    goto/16 :goto_0

    .line 3839
    :catch_13
    move-exception v3

    .line 3840
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3842
    goto/16 :goto_0

    .line 3845
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_14
    :try_start_15
    const-string v17, "one_hand_phonepad_sk"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_15} :catch_14

    move-result v16

    goto/16 :goto_0

    .line 3846
    :catch_14
    move-exception v3

    .line 3847
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3849
    goto/16 :goto_0

    .line 3852
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_15
    :try_start_16
    const-string v17, "one_hand_phonepad_sl"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_16} :catch_15

    move-result v16

    goto/16 :goto_0

    .line 3853
    :catch_15
    move-exception v3

    .line 3854
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3856
    goto/16 :goto_0

    .line 3859
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_16
    :try_start_17
    const-string v17, "one_hand_phonepad_tr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_17} :catch_16

    move-result v16

    goto/16 :goto_0

    .line 3860
    :catch_16
    move-exception v3

    .line 3861
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3863
    goto/16 :goto_0

    .line 3866
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_17
    :try_start_18
    const-string v17, "one_hand_phonepad_ca"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_18 .. :try_end_18} :catch_17

    move-result v16

    goto/16 :goto_0

    .line 3867
    :catch_17
    move-exception v3

    .line 3868
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3870
    goto/16 :goto_0

    .line 3873
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_18
    :try_start_19
    const-string v17, "one_hand_phonepad_gl"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_19 .. :try_end_19} :catch_18

    move-result v16

    goto/16 :goto_0

    .line 3874
    :catch_18
    move-exception v3

    .line 3875
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3877
    goto/16 :goto_0

    .line 3880
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_19
    :try_start_1a
    const-string v17, "one_hand_phonepad_eu"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1a .. :try_end_1a} :catch_19

    move-result v16

    goto/16 :goto_0

    .line 3881
    :catch_19
    move-exception v3

    .line 3882
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3884
    goto/16 :goto_0

    .line 3887
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1a
    :try_start_1b
    const-string v17, "one_hand_phonepad_is"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1b .. :try_end_1b} :catch_1a

    move-result v16

    goto/16 :goto_0

    .line 3888
    :catch_1a
    move-exception v3

    .line 3889
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3891
    goto/16 :goto_0

    .line 3894
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1b
    :try_start_1c
    const-string v17, "one_hand_phonepad_sq"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1c .. :try_end_1c} :catch_1b

    move-result v16

    goto/16 :goto_0

    .line 3895
    :catch_1b
    move-exception v3

    .line 3896
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3898
    goto/16 :goto_0

    .line 3901
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1c
    :try_start_1d
    const-string v17, "one_hand_phonepad_az"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1d .. :try_end_1d} :catch_1c

    move-result v16

    goto/16 :goto_0

    .line 3902
    :catch_1c
    move-exception v3

    .line 3903
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3905
    goto/16 :goto_0

    .line 3908
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1d
    :try_start_1e
    const-string v17, "one_hand_phonepad_id"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1e .. :try_end_1e} :catch_1d

    move-result v16

    goto/16 :goto_0

    .line 3909
    :catch_1d
    move-exception v3

    .line 3910
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3912
    goto/16 :goto_0

    .line 3915
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1e
    :try_start_1f
    const-string v17, "one_hand_phonepad_ms"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1f .. :try_end_1f} :catch_1e

    move-result v16

    goto/16 :goto_0

    .line 3916
    :catch_1e
    move-exception v3

    .line 3917
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3919
    goto/16 :goto_0

    .line 3921
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "KOR_MODE"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v6

    .line 3922
    .local v6, "isKoreaMode":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_DEFAULT_USE_INPUT_METHOD_TYPE_ON_KOR"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v7

    .line 3923
    .local v7, "isSeperatlyKor":Z
    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    .line 3924
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v4

    .line 3926
    .local v4, "hangulModule":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 3927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v10

    .line 3928
    .local v10, "keypadType":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_1

    .line 3930
    :try_start_20
    const-string v17, "one_hand_phonepad_kr_cji"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_20 .. :try_end_20} :catch_1f

    move-result v16

    goto/16 :goto_0

    .line 3931
    :catch_1f
    move-exception v3

    .line 3932
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3934
    goto/16 :goto_0

    .line 3935
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v10, v0, :cond_2

    .line 3937
    :try_start_21
    const-string v17, "one_hand_phonepad_kr_cji_turbo"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_21
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_21 .. :try_end_21} :catch_20

    move-result v16

    goto/16 :goto_0

    .line 3938
    :catch_20
    move-exception v3

    .line 3939
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3941
    goto/16 :goto_0

    .line 3943
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    packed-switch v4, :pswitch_data_0

    .line 3960
    :try_start_22
    const-string v17, "one_hand_phonepad_kr_cji"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_22
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_22 .. :try_end_22} :catch_23

    move-result v16

    goto/16 :goto_0

    .line 3946
    :pswitch_0
    :try_start_23
    const-string v17, "one_hand_phonepad_kr_cji"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_23 .. :try_end_23} :catch_21

    move-result v16

    goto/16 :goto_0

    .line 3947
    :catch_21
    move-exception v3

    .line 3948
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3950
    goto/16 :goto_0

    .line 3953
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :pswitch_1
    :try_start_24
    const-string v17, "one_hand_phonepad_kr_cji_turbo"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_24 .. :try_end_24} :catch_22

    move-result v16

    goto/16 :goto_0

    .line 3954
    :catch_22
    move-exception v3

    .line 3955
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3957
    goto/16 :goto_0

    .line 3961
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :catch_23
    move-exception v3

    .line 3962
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    goto/16 :goto_0

    .line 3968
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    .end local v10    # "keypadType":I
    :cond_3
    packed-switch v4, :pswitch_data_1

    .line 3999
    :try_start_25
    const-string v17, "one_hand_phonepad_kr_cji"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_25 .. :try_end_25} :catch_28

    move-result v16

    goto/16 :goto_0

    .line 3971
    :pswitch_2
    :try_start_26
    const-string v17, "one_hand_phonepad_kr_cji"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_26
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_26 .. :try_end_26} :catch_24

    move-result v16

    goto/16 :goto_0

    .line 3972
    :catch_24
    move-exception v3

    .line 3973
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3975
    goto/16 :goto_0

    .line 3978
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :pswitch_3
    :try_start_27
    const-string v17, "one_hand_phonepad_kr_cji_turbo"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_27 .. :try_end_27} :catch_25

    move-result v16

    goto/16 :goto_0

    .line 3979
    :catch_25
    move-exception v3

    .line 3980
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3982
    goto/16 :goto_0

    .line 3985
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :pswitch_4
    :try_start_28
    const-string v17, "one_hand_phonepad_kr_nara"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_28 .. :try_end_28} :catch_26

    move-result v16

    goto/16 :goto_0

    .line 3986
    :catch_26
    move-exception v3

    .line 3987
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3989
    goto/16 :goto_0

    .line 3992
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :pswitch_5
    :try_start_29
    const-string v17, "one_hand_phonepad_kr_sky"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_29 .. :try_end_29} :catch_27

    move-result v16

    goto/16 :goto_0

    .line 3993
    :catch_27
    move-exception v3

    .line 3994
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3996
    goto/16 :goto_0

    .line 4000
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :catch_28
    move-exception v3

    .line 4001
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    goto/16 :goto_0

    .line 4007
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    .end local v4    # "hangulModule":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->makeSelectLanguagePrefKey(I)Ljava/lang/String;

    move-result-object v9

    .line 4008
    .local v9, "key":Ljava/lang/String;
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v13, v9, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 4010
    .local v11, "korKeyboardType":I
    packed-switch v11, :pswitch_data_2

    .line 4020
    :try_start_2a
    const-string v17, "one_hand_phonepad_kr_cji"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2a .. :try_end_2a} :catch_2a

    move-result v16

    goto/16 :goto_0

    .line 4013
    :pswitch_6
    :try_start_2b
    const-string v17, "one_hand_phonepad_kr_cji_turbo"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2b .. :try_end_2b} :catch_29

    move-result v16

    goto/16 :goto_0

    .line 4014
    :catch_29
    move-exception v3

    .line 4015
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4017
    goto/16 :goto_0

    .line 4021
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :catch_2a
    move-exception v3

    .line 4022
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    goto/16 :goto_0

    .line 4030
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    .end local v6    # "isKoreaMode":Z
    .end local v7    # "isSeperatlyKor":Z
    .end local v9    # "key":Ljava/lang/String;
    .end local v11    # "korKeyboardType":I
    :sswitch_20
    :try_start_2c
    const-string v17, "one_hand_phonepad_kk"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2c .. :try_end_2c} :catch_2b

    move-result v16

    goto/16 :goto_0

    .line 4031
    :catch_2b
    move-exception v3

    .line 4032
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4034
    goto/16 :goto_0

    .line 4037
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_21
    :try_start_2d
    const-string v17, "one_hand_phonepad_ru"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2d .. :try_end_2d} :catch_2c

    move-result v16

    goto/16 :goto_0

    .line 4038
    :catch_2c
    move-exception v3

    .line 4039
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4041
    goto/16 :goto_0

    .line 4044
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_22
    :try_start_2e
    const-string v17, "one_hand_phonepad_bg"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2e .. :try_end_2e} :catch_2d

    move-result v16

    goto/16 :goto_0

    .line 4045
    :catch_2d
    move-exception v3

    .line 4046
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4048
    goto/16 :goto_0

    .line 4051
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_23
    :try_start_2f
    const-string v17, "one_hand_phonepad_uk"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2f .. :try_end_2f} :catch_2e

    move-result v16

    goto/16 :goto_0

    .line 4052
    :catch_2e
    move-exception v3

    .line 4053
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4055
    goto/16 :goto_0

    .line 4058
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_24
    :try_start_30
    const-string v17, "one_hand_phonepad_el"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_30
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_30 .. :try_end_30} :catch_2f

    move-result v16

    goto/16 :goto_0

    .line 4059
    :catch_2f
    move-exception v3

    .line 4060
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4062
    goto/16 :goto_0

    .line 4064
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_25
    const v17, 0x7a68484b

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 4066
    :try_start_31
    const-string v17, "one_hand_phonepad_zh_stroke"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_31
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_31 .. :try_end_31} :catch_30

    move-result v16

    goto/16 :goto_0

    .line 4067
    :catch_30
    move-exception v3

    .line 4068
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4069
    goto/16 :goto_0

    .line 4070
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_5
    const v17, 0x7a685457

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 4071
    if-eqz v14, :cond_6

    .line 4073
    :try_start_32
    const-string v17, "one_hand_phonepad_zt_stroke"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_32
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_32 .. :try_end_32} :catch_31

    move-result v16

    goto/16 :goto_0

    .line 4074
    :catch_31
    move-exception v3

    .line 4075
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4076
    goto/16 :goto_0

    .line 4078
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getLengthOfSpellText()I

    move-result v17

    if-lez v17, :cond_7

    .line 4080
    :try_start_33
    const-string v17, "one_hand_phonepad_zt_zhuyin_spell"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_33
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_33 .. :try_end_33} :catch_32

    move-result v16

    goto/16 :goto_0

    .line 4081
    :catch_32
    move-exception v3

    .line 4082
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4083
    goto/16 :goto_0

    .line 4086
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_7
    :try_start_34
    const-string v17, "one_hand_phonepad_zt_zhuyin"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_34
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_34 .. :try_end_34} :catch_33

    move-result v16

    goto/16 :goto_0

    .line 4087
    :catch_33
    move-exception v3

    .line 4088
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4089
    goto/16 :goto_0

    .line 4093
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_8
    if-eqz v14, :cond_9

    .line 4095
    :try_start_35
    const-string v17, "one_hand_phonepad_cn_stroke"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_35
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_35 .. :try_end_35} :catch_34

    move-result v16

    goto/16 :goto_0

    .line 4096
    :catch_34
    move-exception v3

    .line 4097
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4098
    goto/16 :goto_0

    .line 4100
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_9
    if-eqz v8, :cond_a

    .line 4102
    :try_start_36
    const-string v17, "one_hand_phonepad_cn_pinyin_spell"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_36
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_36 .. :try_end_36} :catch_35

    move-result v16

    goto/16 :goto_0

    .line 4103
    :catch_35
    move-exception v3

    .line 4104
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4105
    goto/16 :goto_0

    .line 4108
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_a
    :try_start_37
    const-string v17, "one_hand_phonepad_cn_pinyin"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_37 .. :try_end_37} :catch_36

    move-result v16

    goto/16 :goto_0

    .line 4109
    :catch_36
    move-exception v3

    .line 4110
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4115
    goto/16 :goto_0

    .line 4117
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_26
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentThaiVowelPageNum()I

    move-result v15

    .line 4118
    .local v15, "thaiVowelPage":I
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v15, v0, :cond_b

    .line 4120
    :try_start_38
    const-string v17, "one_hand_phonepad_th_tone"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_38
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_38 .. :try_end_38} :catch_37

    move-result v16

    goto/16 :goto_0

    .line 4121
    :catch_37
    move-exception v3

    .line 4122
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4123
    goto/16 :goto_0

    .line 4124
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_b
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_c

    .line 4126
    :try_start_39
    const-string v17, "one_hand_phonepad_th_tone_01"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_39
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_39 .. :try_end_39} :catch_38

    move-result v16

    goto/16 :goto_0

    .line 4127
    :catch_38
    move-exception v3

    .line 4128
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4129
    goto/16 :goto_0

    .line 4130
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_c
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_d

    .line 4132
    :try_start_3a
    const-string v17, "one_hand_phonepad_th_tone_02"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3a .. :try_end_3a} :catch_39

    move-result v16

    goto/16 :goto_0

    .line 4133
    :catch_39
    move-exception v3

    .line 4134
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4135
    goto/16 :goto_0

    .line 4138
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_d
    :try_start_3b
    const-string v17, "one_hand_phonepad_th"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3b .. :try_end_3b} :catch_3a

    move-result v16

    goto/16 :goto_0

    .line 4139
    :catch_3a
    move-exception v3

    .line 4140
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4143
    goto/16 :goto_0

    .line 4146
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    .end local v15    # "thaiVowelPage":I
    :sswitch_27
    :try_start_3c
    const-string v17, "one_hand_phonepad_vi"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3c .. :try_end_3c} :catch_3b

    move-result v16

    goto/16 :goto_0

    .line 4147
    :catch_3b
    move-exception v3

    .line 4148
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4150
    goto/16 :goto_0

    .line 4153
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_28
    :try_start_3d
    const-string v17, "one_hand_phonepad_ar"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3d .. :try_end_3d} :catch_3c

    move-result v16

    goto/16 :goto_0

    .line 4154
    :catch_3c
    move-exception v3

    .line 4155
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4157
    goto/16 :goto_0

    .line 4160
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_29
    :try_start_3e
    const-string v17, "one_hand_phonepad_fa"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3e .. :try_end_3e} :catch_3d

    move-result v16

    goto/16 :goto_0

    .line 4161
    :catch_3d
    move-exception v3

    .line 4162
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4164
    goto/16 :goto_0

    .line 4167
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2a
    :try_start_3f
    const-string v17, "one_hand_phonepad_ur"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3f .. :try_end_3f} :catch_3e

    move-result v16

    goto/16 :goto_0

    .line 4168
    :catch_3e
    move-exception v3

    .line 4169
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4171
    goto/16 :goto_0

    .line 4174
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2b
    :try_start_40
    const-string v17, "one_hand_phonepad_he"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_40
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_40 .. :try_end_40} :catch_3f

    move-result v16

    goto/16 :goto_0

    .line 4175
    :catch_3f
    move-exception v3

    .line 4176
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4178
    goto/16 :goto_0

    .line 4181
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2c
    :try_start_41
    const-string v17, "one_hand_phonepad_ka"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_41
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_41 .. :try_end_41} :catch_40

    move-result v16

    goto/16 :goto_0

    .line 4182
    :catch_40
    move-exception v3

    .line 4183
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4185
    goto/16 :goto_0

    .line 4188
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2d
    :try_start_42
    const-string v17, "one_hand_phonepad_hy"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_42 .. :try_end_42} :catch_41

    move-result v16

    goto/16 :goto_0

    .line 4189
    :catch_41
    move-exception v3

    .line 4190
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4192
    goto/16 :goto_0

    .line 4195
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2e
    :try_start_43
    const-string v17, "one_hand_phonepad_mk"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_43
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_43 .. :try_end_43} :catch_42

    move-result v16

    goto/16 :goto_0

    .line 4196
    :catch_42
    move-exception v3

    .line 4197
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4199
    goto/16 :goto_0

    .line 4202
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2f
    :try_start_44
    const-string v17, "one_hand_phonepad_km"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_44
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_44 .. :try_end_44} :catch_43

    move-result v16

    goto/16 :goto_0

    .line 4203
    :catch_43
    move-exception v3

    .line 4204
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 4206
    goto/16 :goto_0

    .line 4209
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_30
    :try_start_45
    const-string v17, "one_hand_phonepad_lo"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_45
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_45 .. :try_end_45} :catch_44

    move-result v16

    goto/16 :goto_0

    .line 4210
    :catch_44
    move-exception v3

    .line 4211
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501c2

    .line 4213
    goto/16 :goto_0

    .line 4217
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_31
    :try_start_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 4218
    const-string v17, "one_hand_phonepad_ja_flick"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v16

    goto/16 :goto_0

    .line 4220
    :cond_e
    const-string v17, "one_hand_phonepad_ja"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_46
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_46 .. :try_end_46} :catch_45

    move-result v16

    goto/16 :goto_0

    .line 4222
    :catch_45
    move-exception v3

    .line 4223
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 4224
    const v16, 0x7f0501b4

    goto/16 :goto_0

    .line 4226
    :cond_f
    const v16, 0x7f0501b3

    goto/16 :goto_0

    .line 4232
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_32
    :try_start_47
    const-string v17, "one_hand_phonepad_mn"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_47
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_47 .. :try_end_47} :catch_46

    move-result v16

    goto/16 :goto_0

    .line 4233
    :catch_46
    move-exception v3

    .line 4234
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501c6

    .line 4236
    goto/16 :goto_0

    .line 4239
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_33
    :try_start_48
    const-string v17, "one_hand_phonepad_uz"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_48
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_48 .. :try_end_48} :catch_47

    move-result v16

    goto/16 :goto_0

    .line 4240
    :catch_47
    move-exception v3

    .line 4241
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501f4

    .line 4243
    goto/16 :goto_0

    .line 4246
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_34
    :try_start_49
    const-string v17, "one_hand_phonepad_ky"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_49
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_49 .. :try_end_49} :catch_48

    move-result v16

    goto/16 :goto_0

    .line 4247
    :catch_48
    move-exception v3

    .line 4248
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501c1

    .line 4250
    goto/16 :goto_0

    .line 4253
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_35
    :try_start_4a
    const-string v17, "one_hand_phonepad_tg"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4a .. :try_end_4a} :catch_49

    move-result v16

    goto/16 :goto_0

    .line 4254
    :catch_49
    move-exception v3

    .line 4255
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501e9

    .line 4257
    goto/16 :goto_0

    .line 4260
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_36
    :try_start_4b
    const-string v17, "one_hand_phonepad_tk"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4b .. :try_end_4b} :catch_4a

    move-result v16

    goto/16 :goto_0

    .line 4261
    :catch_4a
    move-exception v3

    .line 4262
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501ef

    .line 4264
    goto/16 :goto_0

    .line 4267
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_37
    :try_start_4c
    const-string v17, "one_hand_phonepad_af"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4c .. :try_end_4c} :catch_4b

    move-result v16

    goto/16 :goto_0

    .line 4268
    :catch_4b
    move-exception v3

    .line 4269
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050195

    .line 4271
    goto/16 :goto_0

    .line 4275
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :catch_4c
    move-exception v3

    .line 4276
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    goto/16 :goto_0

    .line 3696
    :sswitch_data_0
    .sparse-switch
        0x61660000 -> :sswitch_37
        0x61720000 -> :sswitch_28
        0x617a0000 -> :sswitch_1c
        0x62670000 -> :sswitch_22
        0x63610000 -> :sswitch_17
        0x63730000 -> :sswitch_5
        0x64610000 -> :sswitch_6
        0x64650000 -> :sswitch_2
        0x656c0000 -> :sswitch_24
        0x656e0000 -> :sswitch_0
        0x65730000 -> :sswitch_3
        0x65734553 -> :sswitch_3
        0x65735553 -> :sswitch_3
        0x65740000 -> :sswitch_7
        0x65750000 -> :sswitch_19
        0x66610000 -> :sswitch_29
        0x66690000 -> :sswitch_11
        0x66720000 -> :sswitch_1
        0x66724341 -> :sswitch_1
        0x66724652 -> :sswitch_1
        0x676c0000 -> :sswitch_18
        0x68720000 -> :sswitch_8
        0x68750000 -> :sswitch_b
        0x68790000 -> :sswitch_2d
        0x69640000 -> :sswitch_1d
        0x69730000 -> :sswitch_1a
        0x69740000 -> :sswitch_4
        0x69770000 -> :sswitch_2b
        0x6a610000 -> :sswitch_31
        0x6b610000 -> :sswitch_2c
        0x6b6b0000 -> :sswitch_20
        0x6b6d0000 -> :sswitch_2f
        0x6b6f0000 -> :sswitch_1f
        0x6b790000 -> :sswitch_34
        0x6c6f0000 -> :sswitch_30
        0x6c740000 -> :sswitch_a
        0x6c760000 -> :sswitch_9
        0x6d6b0000 -> :sswitch_2e
        0x6d6e0000 -> :sswitch_32
        0x6d730000 -> :sswitch_1e
        0x6e620000 -> :sswitch_c
        0x6e6c0000 -> :sswitch_d
        0x706c0000 -> :sswitch_e
        0x70740000 -> :sswitch_f
        0x70744252 -> :sswitch_f
        0x70745054 -> :sswitch_f
        0x726f0000 -> :sswitch_10
        0x72750000 -> :sswitch_21
        0x736b0000 -> :sswitch_14
        0x736c0000 -> :sswitch_15
        0x73710000 -> :sswitch_1b
        0x73720000 -> :sswitch_12
        0x73760000 -> :sswitch_13
        0x74670000 -> :sswitch_35
        0x74680000 -> :sswitch_26
        0x746b0000 -> :sswitch_36
        0x74720000 -> :sswitch_16
        0x756b0000 -> :sswitch_23
        0x75720000 -> :sswitch_2a
        0x757a0000 -> :sswitch_33
        0x76690000 -> :sswitch_27
        0x7a680000 -> :sswitch_25
    .end sparse-switch

    .line 3943
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3968
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 4010
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_6
    .end packed-switch
.end method

.method private getOneHandQwertyKeyboardXmlId(I)I
    .locals 20
    .param p1, "language"    # I

    .prologue
    .line 2706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v13

    .line 2707
    .local v13, "preference":Landroid/content/SharedPreferences;
    const-string v17, "da_mode"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 2708
    .local v8, "isDaMode":Z
    const-string v17, "da_language"

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2709
    .local v3, "daLanguage":I
    if-eqz v8, :cond_0

    .line 2710
    move/from16 p1, v3

    .line 2712
    :cond_0
    const/high16 v17, -0x10000

    and-int v11, p1, v17

    .line 2715
    .local v11, "langCode":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v14

    .line 2716
    .local v14, "sLocal":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 2717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputCountryCode()Ljava/lang/String;

    move-result-object v7

    .line 2718
    .local v7, "inputLanguageLocal":Ljava/lang/String;
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    const-string v17, "CH"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    const v17, 0x66724652

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_2

    .line 2720
    :cond_1
    move-object v14, v7

    .line 2723
    .end local v7    # "inputLanguageLocal":Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    .line 2725
    .local v12, "locale":Ljava/lang/String;
    const v16, 0x7f050212

    .line 2727
    .local v16, "xmlId":I
    sparse-switch v11, :sswitch_data_0

    .line 3259
    :try_start_0
    const-string v17, "one_hand_qwerty_en"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_45

    move-result v16

    .line 3266
    :cond_3
    :goto_0
    return v16

    .line 2730
    :sswitch_0
    :try_start_1
    const-string v17, "one_hand_qwerty_hi"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v16

    goto :goto_0

    .line 2731
    :catch_0
    move-exception v5

    .line 2732
    .local v5, "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 2734
    goto :goto_0

    .line 2737
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1
    :try_start_2
    const-string v17, "one_hand_qwerty_bn"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v16

    goto :goto_0

    .line 2738
    :catch_1
    move-exception v5

    .line 2739
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 2741
    goto :goto_0

    .line 2744
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2
    :try_start_3
    const-string v17, "one_hand_qwerty_gu"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v16

    goto :goto_0

    .line 2745
    :catch_2
    move-exception v5

    .line 2746
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 2748
    goto :goto_0

    .line 2751
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_3
    :try_start_4
    const-string v17, "one_hand_qwerty_kn"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v16

    goto :goto_0

    .line 2752
    :catch_3
    move-exception v5

    .line 2753
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 2755
    goto :goto_0

    .line 2758
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_4
    :try_start_5
    const-string v17, "one_hand_qwerty_ml"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v16

    goto :goto_0

    .line 2759
    :catch_4
    move-exception v5

    .line 2760
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 2762
    goto :goto_0

    .line 2765
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_5
    :try_start_6
    const-string v17, "one_hand_qwerty_mr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    move-result v16

    goto :goto_0

    .line 2766
    :catch_5
    move-exception v5

    .line 2767
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 2769
    goto :goto_0

    .line 2772
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_6
    :try_start_7
    const-string v17, "one_hand_qwerty_pa"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    move-result v16

    goto :goto_0

    .line 2773
    :catch_6
    move-exception v5

    .line 2774
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 2776
    goto :goto_0

    .line 2779
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_7
    :try_start_8
    const-string v17, "one_hand_qwerty_si"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_7

    move-result v16

    goto :goto_0

    .line 2780
    :catch_7
    move-exception v5

    .line 2781
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 2783
    goto :goto_0

    .line 2786
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_8
    :try_start_9
    const-string v17, "one_hand_qwerty_te"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_8

    move-result v16

    goto :goto_0

    .line 2787
    :catch_8
    move-exception v5

    .line 2788
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 2790
    goto :goto_0

    .line 2793
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_9
    :try_start_a
    const-string v17, "one_hand_qwerty_ta"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_9

    move-result v16

    goto :goto_0

    .line 2794
    :catch_9
    move-exception v5

    .line 2795
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 2797
    goto :goto_0

    .line 2800
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_a
    :try_start_b
    const-string v17, "one_hand_qwerty_as"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_a

    move-result v16

    goto :goto_0

    .line 2801
    :catch_a
    move-exception v5

    .line 2802
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 2804
    goto/16 :goto_0

    .line 2807
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_b
    :try_start_c
    const-string v17, "one_hand_qwerty_ne"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_b

    move-result v16

    goto/16 :goto_0

    .line 2808
    :catch_b
    move-exception v5

    .line 2809
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 2811
    goto/16 :goto_0

    .line 2814
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_c
    :try_start_d
    const-string v17, "one_hand_qwerty_or"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_c

    move-result v16

    goto/16 :goto_0

    .line 2815
    :catch_c
    move-exception v5

    .line 2816
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 2818
    goto/16 :goto_0

    .line 2820
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v15

    .line 2821
    .local v15, "turkishKeyboardType":I
    packed-switch v15, :pswitch_data_0

    .line 2838
    :try_start_e
    const-string v17, "one_hand_qwerty_en"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_f

    move-result v16

    goto/16 :goto_0

    .line 2824
    :pswitch_0
    :try_start_f
    const-string v17, "one_hand_qwerty_tr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_f} :catch_d

    move-result v16

    goto/16 :goto_0

    .line 2825
    :catch_d
    move-exception v5

    .line 2826
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 2828
    goto/16 :goto_0

    .line 2831
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :pswitch_1
    :try_start_10
    const-string v17, "one_hand_qwerty_tr_f"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_10} :catch_e

    move-result v16

    goto/16 :goto_0

    .line 2832
    :catch_e
    move-exception v5

    .line 2833
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 2835
    goto/16 :goto_0

    .line 2839
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :catch_f
    move-exception v5

    .line 2840
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 2842
    goto/16 :goto_0

    .line 2856
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    .end local v15    # "turkishKeyboardType":I
    :sswitch_e
    :try_start_11
    const-string v17, "one_hand_qwerty_en"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_11} :catch_10

    move-result v16

    goto/16 :goto_0

    .line 2857
    :catch_10
    move-exception v5

    .line 2858
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 2860
    goto/16 :goto_0

    .line 2867
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_f
    :try_start_12
    const-string v17, "one_hand_qwertz"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_12} :catch_11

    move-result v16

    goto/16 :goto_0

    .line 2868
    :catch_11
    move-exception v5

    .line 2869
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 2871
    goto/16 :goto_0

    .line 2873
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_10
    const-string v17, "BE"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 2875
    :try_start_13
    const-string v17, "one_hand_azerty_fr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_13} :catch_12

    move-result v16

    goto/16 :goto_0

    .line 2876
    :catch_12
    move-exception v5

    .line 2877
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 2878
    goto/16 :goto_0

    .line 2881
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_4
    :try_start_14
    const-string v17, "one_hand_qwerty_en"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14 .. :try_end_14} :catch_13

    move-result v16

    goto/16 :goto_0

    .line 2882
    :catch_13
    move-exception v5

    .line 2883
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 2886
    goto/16 :goto_0

    .line 2891
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_11
    :try_start_15
    const-string v17, "one_hand_qwerty_es"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_15} :catch_14

    move-result v16

    goto/16 :goto_0

    .line 2892
    :catch_14
    move-exception v5

    .line 2893
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 2895
    goto/16 :goto_0

    .line 2897
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_12
    const-string v17, "CH"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 2899
    :try_start_16
    const-string v17, "one_hand_qwertz"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_16} :catch_15

    move-result v16

    goto/16 :goto_0

    .line 2900
    :catch_15
    move-exception v5

    .line 2901
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 2902
    goto/16 :goto_0

    .line 2905
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_5
    :try_start_17
    const-string v17, "one_hand_qwerty_it"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_17} :catch_16

    move-result v16

    goto/16 :goto_0

    .line 2906
    :catch_16
    move-exception v5

    .line 2907
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 2910
    goto/16 :goto_0

    .line 2912
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "KOR_MODE"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v9

    .line 2913
    .local v9, "isKorMode":Z
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v10

    .line 2915
    .local v10, "isPasswordMode":Z
    if-eqz v9, :cond_6

    if-eqz v10, :cond_6

    .line 2917
    :try_start_18
    const-string v17, "one_hand_qwerty_kr_to_en"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_18 .. :try_end_18} :catch_17

    move-result v16

    goto/16 :goto_0

    .line 2918
    :catch_17
    move-exception v5

    .line 2919
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 2920
    goto/16 :goto_0

    .line 2923
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_6
    :try_start_19
    const-string v17, "one_hand_qwerty_kr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_19 .. :try_end_19} :catch_18

    move-result v16

    goto/16 :goto_0

    .line 2924
    :catch_18
    move-exception v5

    .line 2925
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 2928
    goto/16 :goto_0

    .line 2932
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    .end local v9    # "isKorMode":Z
    .end local v10    # "isPasswordMode":Z
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 2933
    const v17, 0x66724341

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 2935
    :try_start_1a
    const-string v17, "one_hand_qwerty_en"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1a .. :try_end_1a} :catch_19

    move-result v16

    goto/16 :goto_0

    .line 2936
    :catch_19
    move-exception v5

    .line 2937
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 2938
    goto/16 :goto_0

    .line 2941
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_7
    :try_start_1b
    const-string v17, "one_hand_azerty_fr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1b .. :try_end_1b} :catch_1a

    move-result v16

    goto/16 :goto_0

    .line 2942
    :catch_1a
    move-exception v5

    .line 2943
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 2944
    goto/16 :goto_0

    .line 2947
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_8
    const-string v17, "CA"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 2949
    :try_start_1c
    const-string v17, "one_hand_qwerty_en"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1c .. :try_end_1c} :catch_1b

    move-result v16

    goto/16 :goto_0

    .line 2950
    :catch_1b
    move-exception v5

    .line 2951
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 2952
    goto/16 :goto_0

    .line 2953
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_9
    const-string v17, "CH"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 2955
    :try_start_1d
    const-string v17, "one_hand_qwertz"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1d .. :try_end_1d} :catch_1c

    move-result v16

    goto/16 :goto_0

    .line 2956
    :catch_1c
    move-exception v5

    .line 2957
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 2958
    goto/16 :goto_0

    .line 2961
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_a
    :try_start_1e
    const-string v17, "one_hand_azerty_fr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1e .. :try_end_1e} :catch_1d

    move-result v16

    goto/16 :goto_0

    .line 2962
    :catch_1d
    move-exception v5

    .line 2963
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 2967
    goto/16 :goto_0

    .line 2969
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_GERMAN_KEYBOARD_TYPE"

    const/16 v19, 0x1

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v6

    .line 2970
    .local v6, "germanKeyboardType":I
    packed-switch v6, :pswitch_data_1

    .line 2980
    :try_start_1f
    const-string v17, "one_hand_qwertz_de"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1f .. :try_end_1f} :catch_1f

    move-result v16

    goto/16 :goto_0

    .line 2973
    :pswitch_2
    :try_start_20
    const-string v17, "one_hand_qwertz_de_plus"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_20 .. :try_end_20} :catch_1e

    move-result v16

    goto/16 :goto_0

    .line 2974
    :catch_1e
    move-exception v5

    .line 2975
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050261

    .line 2977
    goto/16 :goto_0

    .line 2981
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :catch_1f
    move-exception v5

    .line 2982
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050261

    .line 2984
    goto/16 :goto_0

    .line 2989
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    .end local v6    # "germanKeyboardType":I
    :sswitch_16
    :try_start_21
    const-string v17, "one_hand_qwerty_kk"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_21
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_21 .. :try_end_21} :catch_20

    move-result v16

    goto/16 :goto_0

    .line 2991
    :catch_20
    move-exception v17

    .line 2996
    :sswitch_17
    :try_start_22
    const-string v17, "one_hand_qwerty_ru"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_22
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_22 .. :try_end_22} :catch_21

    move-result v16

    goto/16 :goto_0

    .line 2997
    :catch_21
    move-exception v5

    .line 2998
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 3000
    goto/16 :goto_0

    .line 3003
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_18
    :try_start_23
    const-string v17, "one_hand_qwerty_da"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_23 .. :try_end_23} :catch_22

    move-result v16

    goto/16 :goto_0

    .line 3004
    :catch_22
    move-exception v5

    .line 3005
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 3007
    goto/16 :goto_0

    .line 3010
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_19
    :try_start_24
    const-string v17, "one_hand_qwerty_nb"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_24 .. :try_end_24} :catch_23

    move-result v16

    goto/16 :goto_0

    .line 3011
    :catch_23
    move-exception v5

    .line 3012
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 3014
    goto/16 :goto_0

    .line 3018
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1a
    :try_start_25
    const-string v17, "one_hand_qwerty_fi"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_25 .. :try_end_25} :catch_24

    move-result v16

    goto/16 :goto_0

    .line 3019
    :catch_24
    move-exception v5

    .line 3020
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 3022
    goto/16 :goto_0

    .line 3025
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1b
    :try_start_26
    const-string v17, "one_hand_qwerty_uk"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_26
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_26 .. :try_end_26} :catch_25

    move-result v16

    goto/16 :goto_0

    .line 3026
    :catch_25
    move-exception v5

    .line 3027
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 3029
    goto/16 :goto_0

    .line 3031
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_BULGARIAN_KEYBOARD_TYPE"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    .line 3032
    .local v2, "bulgarianKeyboardType":I
    packed-switch v2, :pswitch_data_2

    .line 3046
    :try_start_27
    const-string v17, "one_hand_qwerty_bg"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_27 .. :try_end_27} :catch_28

    move-result v16

    goto/16 :goto_0

    .line 3035
    :pswitch_3
    :try_start_28
    const-string v17, "one_hand_qwerty_bg_phonetic"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_28 .. :try_end_28} :catch_26

    move-result v16

    goto/16 :goto_0

    .line 3036
    :catch_26
    move-exception v5

    .line 3038
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :try_start_29
    const-string v17, "one_hand_qwerty_bg"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_29 .. :try_end_29} :catch_27

    move-result v16

    goto/16 :goto_0

    .line 3039
    :catch_27
    move-exception v4

    .line 3040
    .local v4, "e":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f05020a

    goto/16 :goto_0

    .line 3047
    .end local v4    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :catch_28
    move-exception v5

    .line 3048
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f05020a

    .line 3050
    goto/16 :goto_0

    .line 3055
    .end local v2    # "bulgarianKeyboardType":I
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1d
    :try_start_2a
    const-string v17, "one_hand_qwerty_el"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2a .. :try_end_2a} :catch_29

    move-result v16

    goto/16 :goto_0

    .line 3056
    :catch_29
    move-exception v5

    .line 3057
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 3059
    goto/16 :goto_0

    .line 3062
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1e
    :try_start_2b
    const-string v17, "one_hand_qwerty_lv"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2b .. :try_end_2b} :catch_2a

    move-result v16

    goto/16 :goto_0

    .line 3063
    :catch_2a
    move-exception v5

    .line 3064
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 3066
    goto/16 :goto_0

    .line 3069
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1f
    :try_start_2c
    const-string v17, "one_hand_qwerty_is"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2c .. :try_end_2c} :catch_2b

    move-result v16

    goto/16 :goto_0

    .line 3070
    :catch_2b
    move-exception v5

    .line 3071
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 3073
    goto/16 :goto_0

    .line 3076
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_20
    const v17, 0x7a68484b

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 3078
    :try_start_2d
    const-string v17, "one_hand_qwerty_zh"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2d .. :try_end_2d} :catch_2c

    move-result v16

    goto/16 :goto_0

    .line 3079
    :catch_2c
    move-exception v5

    .line 3080
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 3081
    goto/16 :goto_0

    .line 3082
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_b
    const v17, 0x7a685457

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 3084
    :try_start_2e
    const-string v17, "one_hand_qwerty_zt"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2e .. :try_end_2e} :catch_2d

    move-result v16

    goto/16 :goto_0

    .line 3085
    :catch_2d
    move-exception v5

    .line 3086
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 3087
    goto/16 :goto_0

    .line 3090
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_c
    :try_start_2f
    const-string v17, "one_hand_qwerty_cn"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2f .. :try_end_2f} :catch_2e

    move-result v16

    goto/16 :goto_0

    .line 3091
    :catch_2e
    move-exception v5

    .line 3092
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 3095
    goto/16 :goto_0

    .line 3098
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_21
    :try_start_30
    const-string v17, "one_hand_qwerty_th"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_30
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_30 .. :try_end_30} :catch_2f

    move-result v16

    goto/16 :goto_0

    .line 3099
    :catch_2f
    move-exception v5

    .line 3100
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 3102
    goto/16 :goto_0

    .line 3105
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_22
    :try_start_31
    const-string v17, "one_hand_qwerty_vi"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_31
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_31 .. :try_end_31} :catch_30

    move-result v16

    goto/16 :goto_0

    .line 3106
    :catch_30
    move-exception v5

    .line 3107
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 3109
    goto/16 :goto_0

    .line 3112
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_23
    :try_start_32
    const-string v17, "one_hand_qwerty_ar"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_32
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_32 .. :try_end_32} :catch_31

    move-result v16

    goto/16 :goto_0

    .line 3113
    :catch_31
    move-exception v5

    .line 3114
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 3116
    goto/16 :goto_0

    .line 3119
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_24
    :try_start_33
    const-string v17, "one_hand_qwerty_fa"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_33
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_33 .. :try_end_33} :catch_32

    move-result v16

    goto/16 :goto_0

    .line 3120
    :catch_32
    move-exception v5

    .line 3121
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 3123
    goto/16 :goto_0

    .line 3126
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_25
    :try_start_34
    const-string v17, "one_hand_qwerty_ur"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_34
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_34 .. :try_end_34} :catch_33

    move-result v16

    goto/16 :goto_0

    .line 3127
    :catch_33
    move-exception v5

    .line 3128
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 3130
    goto/16 :goto_0

    .line 3133
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_26
    :try_start_35
    const-string v17, "one_hand_qwerty_he"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_35
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_35 .. :try_end_35} :catch_34

    move-result v16

    goto/16 :goto_0

    .line 3134
    :catch_34
    move-exception v5

    .line 3135
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 3137
    goto/16 :goto_0

    .line 3140
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_27
    :try_start_36
    const-string v17, "one_hand_qwerty_ka"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_36
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_36 .. :try_end_36} :catch_35

    move-result v16

    goto/16 :goto_0

    .line 3141
    :catch_35
    move-exception v5

    .line 3142
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 3144
    goto/16 :goto_0

    .line 3147
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_28
    :try_start_37
    const-string v17, "one_hand_qwerty_hy"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_37 .. :try_end_37} :catch_36

    move-result v16

    goto/16 :goto_0

    .line 3148
    :catch_36
    move-exception v5

    .line 3149
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 3151
    goto/16 :goto_0

    .line 3154
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_29
    :try_start_38
    const-string v17, "one_hand_qwerty_az"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_38
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_38 .. :try_end_38} :catch_37

    move-result v16

    goto/16 :goto_0

    .line 3155
    :catch_37
    move-exception v5

    .line 3156
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 3158
    goto/16 :goto_0

    .line 3161
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2a
    :try_start_39
    const-string v17, "one_hand_qwerty_lt"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_39
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_39 .. :try_end_39} :catch_38

    move-result v16

    goto/16 :goto_0

    .line 3162
    :catch_38
    move-exception v5

    .line 3163
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 3165
    goto/16 :goto_0

    .line 3168
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2b
    :try_start_3a
    const-string v17, "one_hand_qwerty_mk"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3a .. :try_end_3a} :catch_39

    move-result v16

    goto/16 :goto_0

    .line 3169
    :catch_39
    move-exception v5

    .line 3170
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 3172
    goto/16 :goto_0

    .line 3175
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2c
    :try_start_3b
    const-string v17, "one_hand_qwerty_et"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3b .. :try_end_3b} :catch_3a

    move-result v16

    goto/16 :goto_0

    .line 3176
    :catch_3a
    move-exception v5

    .line 3177
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 3179
    goto/16 :goto_0

    .line 3182
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2d
    :try_start_3c
    const-string v17, "one_hand_qwerty_sq"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3c .. :try_end_3c} :catch_3b

    move-result v16

    goto/16 :goto_0

    .line 3183
    :catch_3b
    move-exception v5

    .line 3184
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 3186
    goto/16 :goto_0

    .line 3189
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2e
    :try_start_3d
    const-string v17, "one_hand_qwerty_km"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3d .. :try_end_3d} :catch_3c

    move-result v16

    goto/16 :goto_0

    .line 3190
    :catch_3c
    move-exception v5

    .line 3191
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 3193
    goto/16 :goto_0

    .line 3196
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2f
    :try_start_3e
    const-string v17, "one_hand_qwerty_lo"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3e .. :try_end_3e} :catch_3d

    move-result v16

    goto/16 :goto_0

    .line 3197
    :catch_3d
    move-exception v5

    .line 3198
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 3200
    goto/16 :goto_0

    .line 3203
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_30
    const v17, 0x6d795a57

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 3204
    :try_start_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 3205
    const-string v17, "one_hand_qwerty_zw_shift_on"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v16

    goto/16 :goto_0

    .line 3207
    :cond_d
    const-string v17, "one_hand_qwerty_zw"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3f .. :try_end_3f} :catch_3e

    move-result v16

    goto/16 :goto_0

    .line 3210
    :catch_3e
    move-exception v5

    .line 3211
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 3213
    goto/16 :goto_0

    .line 3217
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_31
    :try_start_40
    const-string v17, "one_hand_qwerty_ja"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_40
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_40 .. :try_end_40} :catch_3f

    move-result v16

    goto/16 :goto_0

    .line 3218
    :catch_3f
    move-exception v5

    .line 3219
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    .line 3221
    goto/16 :goto_0

    .line 3224
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_32
    :try_start_41
    const-string v17, "one_hand_qwerty_mn"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_41
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_41 .. :try_end_41} :catch_40

    move-result v16

    goto/16 :goto_0

    .line 3225
    :catch_40
    move-exception v5

    .line 3226
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f05022a

    .line 3228
    goto/16 :goto_0

    .line 3231
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_33
    :try_start_42
    const-string v17, "one_hand_qwerty_uz"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_42 .. :try_end_42} :catch_41

    move-result v16

    goto/16 :goto_0

    .line 3232
    :catch_41
    move-exception v5

    .line 3233
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050259

    .line 3235
    goto/16 :goto_0

    .line 3238
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_34
    :try_start_43
    const-string v17, "one_hand_qwerty_ky"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_43
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_43 .. :try_end_43} :catch_42

    move-result v16

    goto/16 :goto_0

    .line 3239
    :catch_42
    move-exception v5

    .line 3240
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050224

    .line 3242
    goto/16 :goto_0

    .line 3245
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_35
    :try_start_44
    const-string v17, "one_hand_qwerty_tg"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_44
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_44 .. :try_end_44} :catch_43

    move-result v16

    goto/16 :goto_0

    .line 3246
    :catch_43
    move-exception v5

    .line 3247
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050252

    .line 3249
    goto/16 :goto_0

    .line 3252
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_36
    :try_start_45
    const-string v17, "one_hand_qwerty_tk"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_45
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_45 .. :try_end_45} :catch_44

    move-result v16

    goto/16 :goto_0

    .line 3253
    :catch_44
    move-exception v5

    .line 3254
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050254

    .line 3256
    goto/16 :goto_0

    .line 3260
    .end local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    :catch_45
    move-exception v5

    .line 3261
    .restart local v5    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f050212

    goto/16 :goto_0

    .line 2727
    nop

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_23
        0x61730000 -> :sswitch_a
        0x617a0000 -> :sswitch_29
        0x62670000 -> :sswitch_1c
        0x626e0000 -> :sswitch_1
        0x63610000 -> :sswitch_e
        0x63730000 -> :sswitch_f
        0x64610000 -> :sswitch_18
        0x64650000 -> :sswitch_15
        0x656c0000 -> :sswitch_1d
        0x656e0000 -> :sswitch_e
        0x65730000 -> :sswitch_11
        0x65734553 -> :sswitch_11
        0x65735553 -> :sswitch_11
        0x65740000 -> :sswitch_2c
        0x65750000 -> :sswitch_e
        0x66610000 -> :sswitch_24
        0x66690000 -> :sswitch_1a
        0x66720000 -> :sswitch_14
        0x66724341 -> :sswitch_14
        0x66724652 -> :sswitch_14
        0x676c0000 -> :sswitch_e
        0x67750000 -> :sswitch_2
        0x68690000 -> :sswitch_0
        0x68720000 -> :sswitch_f
        0x68750000 -> :sswitch_f
        0x68790000 -> :sswitch_28
        0x69640000 -> :sswitch_e
        0x69730000 -> :sswitch_1f
        0x69740000 -> :sswitch_12
        0x69770000 -> :sswitch_26
        0x6a610000 -> :sswitch_31
        0x6b610000 -> :sswitch_27
        0x6b6b0000 -> :sswitch_16
        0x6b6d0000 -> :sswitch_2e
        0x6b6e0000 -> :sswitch_3
        0x6b6f0000 -> :sswitch_13
        0x6b790000 -> :sswitch_34
        0x6c6f0000 -> :sswitch_2f
        0x6c740000 -> :sswitch_2a
        0x6c760000 -> :sswitch_1e
        0x6d6b0000 -> :sswitch_2b
        0x6d6c0000 -> :sswitch_4
        0x6d6e0000 -> :sswitch_32
        0x6d720000 -> :sswitch_5
        0x6d730000 -> :sswitch_e
        0x6d790000 -> :sswitch_30
        0x6e620000 -> :sswitch_19
        0x6e650000 -> :sswitch_b
        0x6e6c0000 -> :sswitch_10
        0x6f720000 -> :sswitch_c
        0x70610000 -> :sswitch_6
        0x706c0000 -> :sswitch_e
        0x70740000 -> :sswitch_e
        0x726f0000 -> :sswitch_e
        0x72750000 -> :sswitch_17
        0x73690000 -> :sswitch_7
        0x736b0000 -> :sswitch_e
        0x736c0000 -> :sswitch_f
        0x73710000 -> :sswitch_2d
        0x73720000 -> :sswitch_f
        0x73760000 -> :sswitch_1a
        0x74610000 -> :sswitch_9
        0x74650000 -> :sswitch_8
        0x74670000 -> :sswitch_35
        0x74680000 -> :sswitch_21
        0x746b0000 -> :sswitch_36
        0x74720000 -> :sswitch_d
        0x756b0000 -> :sswitch_1b
        0x75720000 -> :sswitch_25
        0x757a0000 -> :sswitch_33
        0x76690000 -> :sswitch_22
        0x7a680000 -> :sswitch_20
        0x7a68434e -> :sswitch_20
    .end sparse-switch

    .line 2821
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2970
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    .line 3032
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method private getOneHandSymbolKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 13

    .prologue
    const/high16 v12, 0x6c6f0000

    const/high16 v11, 0x6b6d0000

    const/4 v10, 0x0

    .line 1629
    const-string v7, "SamsungIME"

    const-string v8, "getOneHandSymbolKeyboard"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 1632
    const/4 v6, 0x0

    .line 1633
    .local v6, "xmlId":I
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "INPUT_LANGUAGE"

    const v9, 0x656e4742

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    .line 1634
    .local v2, "language":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v1

    .line 1635
    .local v1, "isPhoneNumberInput":Z
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v3

    .line 1636
    .local v3, "method":I
    const/4 v4, 0x0

    .line 1638
    .local v4, "modeId":I
    if-nez v3, :cond_1d

    .line 1639
    if-eqz v1, :cond_1

    .line 1641
    :try_start_0
    const-string v7, "one_hand_phonepad_phone_symbol"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 1865
    :goto_0
    iget-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v7, v6, :cond_0

    iget v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v7, v4, :cond_0

    iget-boolean v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v8

    if-eq v7, v8, :cond_25

    .line 1867
    :cond_0
    if-eqz v4, :cond_24

    .line 1868
    new-instance v7, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v6, v4}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 1873
    :goto_1
    iget-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-direct {p0, v7, v6, v4}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    .line 1878
    :goto_2
    iget-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    return-object v7

    .line 1642
    :catch_0
    move-exception v0

    .line 1643
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0501d7

    .line 1644
    goto :goto_0

    .line 1646
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    const-string v7, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1648
    invoke-static {v2}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1650
    :try_start_1
    const-string v7, "one_hand_qwerty_number_symbols_he_arabic"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 1807
    :cond_2
    :goto_3
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SYMBOLS_PAGE"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v4

    goto :goto_0

    .line 1651
    :catch_1
    move-exception v0

    .line 1652
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f050239

    .line 1653
    goto :goto_3

    .line 1656
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    :try_start_2
    const-string v7, "one_hand_qwerty_number_symbols_he"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v6

    goto :goto_3

    .line 1657
    :catch_2
    move-exception v0

    .line 1658
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f050238

    .line 1659
    goto :goto_3

    .line 1662
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_4
    invoke-static {v2}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1664
    const/high16 v7, 0x61720000

    if-ne v2, v7, :cond_6

    .line 1665
    :try_start_3
    const-string v7, "one_hand_qwerty_number_symbols_arabic"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v6

    .line 1797
    :cond_5
    :goto_4
    const v7, 0x7f05022e

    if-ne v6, v7, :cond_2

    .line 1798
    const/4 v5, 0x0

    .line 1800
    .local v5, "secXmlId":I
    :try_start_4
    const-string v7, "one_hand_qwerty_number_symbols"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_1f

    move-result v5

    .line 1801
    move v6, v5

    goto :goto_3

    .line 1666
    .end local v5    # "secXmlId":I
    :cond_6
    const/high16 v7, 0x66610000

    if-ne v2, v7, :cond_7

    .line 1667
    :try_start_5
    const-string v7, "one_hand_qwerty_number_symbols_farsi"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v6

    goto :goto_4

    .line 1668
    :cond_7
    const/high16 v7, 0x75720000

    if-ne v2, v7, :cond_5

    .line 1669
    const-string v7, "one_hand_qwerty_number_symbols_urdu"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v6

    goto :goto_4

    .line 1671
    :catch_3
    move-exception v0

    .line 1672
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f050230

    .line 1673
    goto :goto_4

    .line 1674
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_8
    const/high16 v7, 0x68690000

    if-ne v2, v7, :cond_9

    .line 1676
    :try_start_6
    const-string v7, "one_hand_qwerty_number_symbols_hi"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    move-result v6

    goto :goto_4

    .line 1677
    :catch_4
    move-exception v0

    .line 1678
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f05023b

    .line 1679
    goto :goto_4

    .line 1680
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_9
    const/high16 v7, 0x626e0000

    if-ne v2, v7, :cond_a

    .line 1682
    :try_start_7
    const-string v7, "one_hand_qwerty_number_symbols_bn"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_5

    move-result v6

    goto :goto_4

    .line 1683
    :catch_5
    move-exception v0

    .line 1684
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f050234

    .line 1685
    goto :goto_4

    .line 1686
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_a
    const/high16 v7, 0x67750000

    if-ne v2, v7, :cond_b

    .line 1688
    :try_start_8
    const-string v7, "one_hand_qwerty_number_symbols_gu"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_6

    move-result v6

    goto :goto_4

    .line 1689
    :catch_6
    move-exception v0

    .line 1690
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f050237

    .line 1691
    goto :goto_4

    .line 1692
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_b
    const/high16 v7, 0x6b6e0000

    if-ne v2, v7, :cond_c

    .line 1694
    :try_start_9
    const-string v7, "one_hand_qwerty_number_symbols_kn"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_7

    move-result v6

    goto :goto_4

    .line 1695
    :catch_7
    move-exception v0

    .line 1696
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f05023d

    .line 1697
    goto :goto_4

    .line 1698
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_c
    const/high16 v7, 0x6d6c0000

    if-ne v2, v7, :cond_d

    .line 1700
    :try_start_a
    const-string v7, "one_hand_qwerty_number_symbols_ml"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_8

    move-result v6

    goto :goto_4

    .line 1701
    :catch_8
    move-exception v0

    .line 1702
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f05023f

    .line 1703
    goto :goto_4

    .line 1704
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_d
    const/high16 v7, 0x6d720000

    if-ne v2, v7, :cond_e

    .line 1706
    :try_start_b
    const-string v7, "one_hand_qwerty_number_symbols_mr"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_9

    move-result v6

    goto/16 :goto_4

    .line 1707
    :catch_9
    move-exception v0

    .line 1708
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f050240

    .line 1709
    goto/16 :goto_4

    .line 1710
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_e
    const/high16 v7, 0x70610000

    if-ne v2, v7, :cond_f

    .line 1712
    :try_start_c
    const-string v7, "one_hand_qwerty_number_symbols_pa"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_a

    move-result v6

    goto/16 :goto_4

    .line 1713
    :catch_a
    move-exception v0

    .line 1714
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f050243

    .line 1715
    goto/16 :goto_4

    .line 1716
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_f
    const/high16 v7, 0x73690000

    if-ne v2, v7, :cond_10

    .line 1718
    :try_start_d
    const-string v7, "one_hand_qwerty_number_symbols_si"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_b

    move-result v6

    goto/16 :goto_4

    .line 1719
    :catch_b
    move-exception v0

    .line 1720
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f050244

    .line 1721
    goto/16 :goto_4

    .line 1722
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_10
    const/high16 v7, 0x74650000

    if-ne v2, v7, :cond_11

    .line 1724
    :try_start_e
    const-string v7, "one_hand_qwerty_number_symbols_te"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_c

    move-result v6

    goto/16 :goto_4

    .line 1725
    :catch_c
    move-exception v0

    .line 1726
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f050246

    .line 1727
    goto/16 :goto_4

    .line 1728
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_11
    const/high16 v7, 0x74610000

    if-ne v2, v7, :cond_12

    .line 1730
    :try_start_f
    const-string v7, "one_hand_qwerty_number_symbols_ta"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_f} :catch_d

    move-result v6

    goto/16 :goto_4

    .line 1731
    :catch_d
    move-exception v0

    .line 1732
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f050245

    .line 1733
    goto/16 :goto_4

    .line 1734
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_12
    const/high16 v7, 0x61730000

    if-ne v2, v7, :cond_13

    .line 1736
    :try_start_10
    const-string v7, "one_hand_qwerty_number_symbols_as"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_10} :catch_e

    move-result v6

    goto/16 :goto_4

    .line 1737
    :catch_e
    move-exception v0

    .line 1738
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f050231

    .line 1739
    goto/16 :goto_4

    .line 1740
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_13
    const/high16 v7, 0x6e650000

    if-ne v2, v7, :cond_14

    .line 1742
    :try_start_11
    const-string v7, "one_hand_qwerty_number_symbols_ne"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_11} :catch_f

    move-result v6

    goto/16 :goto_4

    .line 1743
    :catch_f
    move-exception v0

    .line 1744
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f050241

    .line 1745
    goto/16 :goto_4

    .line 1746
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_14
    const/high16 v7, 0x6f720000

    if-ne v2, v7, :cond_15

    .line 1748
    :try_start_12
    const-string v7, "one_hand_qwerty_number_symbols_or"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_12} :catch_10

    move-result v6

    goto/16 :goto_4

    .line 1749
    :catch_10
    move-exception v0

    .line 1750
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f050242

    .line 1751
    goto/16 :goto_4

    .line 1752
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_15
    if-ne v2, v11, :cond_16

    .line 1754
    :try_start_13
    const-string v7, "one_hand_qwerty_number_symbols_km"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_13} :catch_11

    move-result v6

    goto/16 :goto_4

    .line 1755
    :catch_11
    move-exception v0

    .line 1756
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f05023c

    .line 1757
    goto/16 :goto_4

    .line 1758
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_16
    if-ne v2, v12, :cond_17

    .line 1760
    :try_start_14
    const-string v7, "one_hand_qwerty_number_symbols_lo"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14 .. :try_end_14} :catch_12

    move-result v6

    goto/16 :goto_4

    .line 1761
    :catch_12
    move-exception v0

    .line 1762
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f05023e

    .line 1763
    goto/16 :goto_4

    .line 1764
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_17
    const v7, 0x6d795a57

    if-ne v2, v7, :cond_18

    .line 1766
    :try_start_15
    const-string v7, "one_hand_qwerty_number_symbols_zw"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_15} :catch_13

    move-result v6

    goto/16 :goto_4

    .line 1767
    :catch_13
    move-exception v0

    .line 1768
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f050249

    .line 1769
    goto/16 :goto_4

    .line 1770
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_18
    const/high16 v7, 0x74680000

    if-ne v2, v7, :cond_19

    .line 1772
    :try_start_16
    const-string v7, "one_hand_qwerty_number_symbols_th"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_16} :catch_14

    move-result v6

    goto/16 :goto_4

    .line 1773
    :catch_14
    move-exception v0

    .line 1774
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f05022e

    .line 1775
    goto/16 :goto_4

    .line 1776
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_19
    const/high16 v7, 0x65730000

    if-eq v2, v7, :cond_1a

    const v7, 0x65734553

    if-eq v2, v7, :cond_1a

    const v7, 0x65735553

    if-ne v2, v7, :cond_1b

    :cond_1a
    iget-boolean v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->ADD_SMILEY_SYMBOL:Z

    if-nez v7, :cond_1b

    .line 1780
    :try_start_17
    const-string v7, "one_hand_qwerty_number_symbols_es"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_17} :catch_15

    move-result v6

    goto/16 :goto_4

    .line 1781
    :catch_15
    move-exception v0

    .line 1782
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f05022e

    .line 1783
    goto/16 :goto_4

    .line 1784
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_1b
    iget-boolean v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->ADD_SMILEY_SYMBOL:Z

    if-eqz v7, :cond_1c

    .line 1786
    :try_start_18
    const-string v7, "one_hand_qwerty_number_symbols_add_smiley"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_18 .. :try_end_18} :catch_16

    move-result v6

    goto/16 :goto_4

    .line 1787
    :catch_16
    move-exception v0

    .line 1788
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f05022e

    .line 1789
    goto/16 :goto_4

    .line 1792
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_1c
    :try_start_19
    const-string v7, "one_hand_qwerty_number_symbols"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_19 .. :try_end_19} :catch_17

    move-result v6

    goto/16 :goto_4

    .line 1793
    :catch_17
    move-exception v0

    .line 1794
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f05022e

    goto/16 :goto_4

    .line 1811
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_1d
    if-eqz v1, :cond_1e

    .line 1813
    :try_start_1a
    const-string v7, "one_hand_phonepad_phone_symbol"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1a .. :try_end_1a} :catch_18

    move-result v6

    goto/16 :goto_0

    .line 1814
    :catch_18
    move-exception v0

    .line 1815
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0501d7

    .line 1816
    goto/16 :goto_0

    .line 1818
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_1e
    const-string v7, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 1820
    invoke-static {v2}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 1822
    :try_start_1b
    const-string v7, "one_phonepad_symbol_he_arabic"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1b .. :try_end_1b} :catch_19

    move-result v6

    .line 1860
    :goto_5
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SYMBOLS_PAGE"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v4

    goto/16 :goto_0

    .line 1823
    :catch_19
    move-exception v0

    .line 1824
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0501e6

    .line 1825
    goto :goto_5

    .line 1828
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_1f
    :try_start_1c
    const-string v7, "one_hand_phonepad_symbol_he"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1c .. :try_end_1c} :catch_1a

    move-result v6

    goto :goto_5

    .line 1829
    :catch_1a
    move-exception v0

    .line 1830
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0501e5

    .line 1831
    goto :goto_5

    .line 1834
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_20
    invoke-static {v2}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 1836
    :try_start_1d
    const-string v7, "one_hand_phonepad_symbol_arabic"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1d .. :try_end_1d} :catch_1b

    move-result v6

    goto :goto_5

    .line 1837
    :catch_1b
    move-exception v0

    .line 1838
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0501e4

    .line 1839
    goto :goto_5

    .line 1840
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_21
    if-ne v2, v11, :cond_22

    .line 1842
    :try_start_1e
    const-string v7, "one_hand_phonepad_symbol_km"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1e .. :try_end_1e} :catch_1c

    move-result v6

    goto :goto_5

    .line 1843
    :catch_1c
    move-exception v0

    .line 1844
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0501e7

    .line 1845
    goto :goto_5

    .line 1846
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_22
    if-ne v2, v12, :cond_23

    .line 1848
    :try_start_1f
    const-string v7, "one_hand_phonepad_symbol_lo"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1f .. :try_end_1f} :catch_1d

    move-result v6

    goto :goto_5

    .line 1849
    :catch_1d
    move-exception v0

    .line 1850
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0501e8

    .line 1851
    goto :goto_5

    .line 1854
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_23
    :try_start_20
    const-string v7, "one_hand_phonepad_symbol"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_20 .. :try_end_20} :catch_1e

    move-result v6

    goto :goto_5

    .line 1855
    :catch_1e
    move-exception v0

    .line 1856
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0501e3

    goto :goto_5

    .line 1870
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_24
    new-instance v7, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v6}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_1

    .line 1875
    :cond_25
    iget-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iput-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_2

    .line 1802
    .restart local v5    # "secXmlId":I
    :catch_1f
    move-exception v7

    goto/16 :goto_3
.end method

.method private getPhonePadCurrentSymbolPageModeId(I)I
    .locals 8
    .param p1, "pageNum"    # I

    .prologue
    .line 1184
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1185
    .local v5, "preference":Landroid/content/SharedPreferences;
    const-string v6, "da_mode"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1186
    .local v1, "isDaMode":Z
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v2

    .line 1187
    .local v2, "isEmailMode":Z
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v3

    .line 1188
    .local v3, "isUrlMode":Z
    const/4 v4, 0x0

    .line 1189
    .local v4, "pageId":I
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_12

    if-nez v1, :cond_12

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->isUseGlobalKey()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1190
    packed-switch p1, :pswitch_data_0

    .line 1297
    if-eqz v2, :cond_10

    .line 1298
    :try_start_0
    const-string v6, "symbol_page_1_email"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_8

    move-result v4

    .line 1430
    :goto_0
    return v4

    .line 1193
    :pswitch_0
    if-eqz v2, :cond_0

    .line 1194
    :try_start_1
    const-string v6, "symbol_page_1_email"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 1195
    :cond_0
    if-eqz v3, :cond_1

    .line 1196
    const-string v6, "symbol_page_1_url"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_0

    .line 1198
    :cond_1
    const v4, 0x7f0800e3

    goto :goto_0

    .line 1200
    :catch_0
    move-exception v0

    .line 1201
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0800e3

    .line 1203
    goto :goto_0

    .line 1206
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :pswitch_1
    if-eqz v2, :cond_2

    .line 1207
    :try_start_2
    const-string v6, "symbol_page_2_email"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 1208
    :cond_2
    if-eqz v3, :cond_3

    .line 1209
    const-string v6, "symbol_page_2_url"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    goto :goto_0

    .line 1211
    :cond_3
    const v4, 0x7f0800e5

    goto :goto_0

    .line 1213
    :catch_1
    move-exception v0

    .line 1214
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0800e5

    .line 1216
    goto :goto_0

    .line 1219
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :pswitch_2
    if-eqz v2, :cond_4

    .line 1220
    :try_start_3
    const-string v6, "symbol_page_3_email"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 1221
    :cond_4
    if-eqz v3, :cond_5

    .line 1222
    const-string v6, "symbol_page_3_url"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v4

    goto :goto_0

    .line 1224
    :cond_5
    const v4, 0x7f0800e7

    goto :goto_0

    .line 1226
    :catch_2
    move-exception v0

    .line 1227
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0800e7

    .line 1229
    goto :goto_0

    .line 1232
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :pswitch_3
    if-eqz v2, :cond_6

    .line 1233
    :try_start_4
    const-string v6, "symbol_page_4_email"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 1234
    :cond_6
    if-eqz v3, :cond_7

    .line 1235
    const-string v6, "symbol_page_4_url"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v4

    goto :goto_0

    .line 1237
    :cond_7
    const v4, 0x7f0800f8

    goto :goto_0

    .line 1239
    :catch_3
    move-exception v0

    .line 1240
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0800f8

    .line 1242
    goto :goto_0

    .line 1245
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :pswitch_4
    if-eqz v2, :cond_8

    .line 1246
    :try_start_5
    const-string v6, "symbol_page_5_email"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 1247
    :cond_8
    if-eqz v3, :cond_9

    .line 1248
    const-string v6, "symbol_page_5_url"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 1250
    :cond_9
    const-string v6, "symbol_page_5_normal"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v4

    goto/16 :goto_0

    .line 1252
    :catch_4
    move-exception v0

    .line 1253
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0800e3

    .line 1255
    goto/16 :goto_0

    .line 1258
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :pswitch_5
    if-eqz v2, :cond_a

    .line 1259
    :try_start_6
    const-string v6, "symbol_page_6_email"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 1260
    :cond_a
    if-eqz v3, :cond_b

    .line 1261
    const-string v6, "symbol_page_6_url"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 1263
    :cond_b
    const-string v6, "symbol_page_6_normal"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    move-result v4

    goto/16 :goto_0

    .line 1265
    :catch_5
    move-exception v0

    .line 1266
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0800f8

    .line 1268
    goto/16 :goto_0

    .line 1271
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :pswitch_6
    if-eqz v2, :cond_c

    .line 1272
    :try_start_7
    const-string v6, "symbol_page_7_email"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 1273
    :cond_c
    if-eqz v3, :cond_d

    .line 1274
    const-string v6, "symbol_page_7_url"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 1276
    :cond_d
    const-string v6, "symbol_page_7_normal"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    move-result v4

    goto/16 :goto_0

    .line 1278
    :catch_6
    move-exception v0

    .line 1279
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0800f8

    .line 1281
    goto/16 :goto_0

    .line 1284
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :pswitch_7
    if-eqz v2, :cond_e

    .line 1285
    :try_start_8
    const-string v6, "symbol_page_8_email"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 1286
    :cond_e
    if-eqz v3, :cond_f

    .line 1287
    const-string v6, "symbol_page_8_url"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 1289
    :cond_f
    const-string v6, "symbol_page_8_normal"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_7

    move-result v4

    goto/16 :goto_0

    .line 1291
    :catch_7
    move-exception v0

    .line 1292
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0800f8

    .line 1294
    goto/16 :goto_0

    .line 1299
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_10
    if-eqz v3, :cond_11

    .line 1300
    :try_start_9
    const-string v6, "symbol_page_1_url"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_8

    move-result v4

    goto/16 :goto_0

    .line 1302
    :cond_11
    const v4, 0x7f0800e3

    goto/16 :goto_0

    .line 1304
    :catch_8
    move-exception v0

    .line 1305
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0800e3

    .line 1307
    goto/16 :goto_0

    .line 1310
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_12
    packed-switch p1, :pswitch_data_1

    .line 1417
    if-eqz v2, :cond_23

    .line 1418
    :try_start_a
    const-string v6, "symbol_page_1_email_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_11

    move-result v4

    goto/16 :goto_0

    .line 1313
    :pswitch_8
    if-eqz v2, :cond_13

    .line 1314
    :try_start_b
    const-string v6, "symbol_page_1_email_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 1315
    :cond_13
    if-eqz v3, :cond_14

    .line 1316
    const-string v6, "symbol_page_1_url_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_9

    move-result v4

    goto/16 :goto_0

    .line 1318
    :cond_14
    const v4, 0x7f0800e4

    goto/16 :goto_0

    .line 1320
    :catch_9
    move-exception v0

    .line 1321
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0800e4

    .line 1323
    goto/16 :goto_0

    .line 1326
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :pswitch_9
    if-eqz v2, :cond_15

    .line 1327
    :try_start_c
    const-string v6, "symbol_page_2_email_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 1328
    :cond_15
    if-eqz v3, :cond_16

    .line 1329
    const-string v6, "symbol_page_2_url_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_a

    move-result v4

    goto/16 :goto_0

    .line 1331
    :cond_16
    const v4, 0x7f0800e6

    goto/16 :goto_0

    .line 1333
    :catch_a
    move-exception v0

    .line 1334
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0800e6

    .line 1336
    goto/16 :goto_0

    .line 1339
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :pswitch_a
    if-eqz v2, :cond_17

    .line 1340
    :try_start_d
    const-string v6, "symbol_page_3_email_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 1341
    :cond_17
    if-eqz v3, :cond_18

    .line 1342
    const-string v6, "symbol_page_3_url_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_b

    move-result v4

    goto/16 :goto_0

    .line 1344
    :cond_18
    const v4, 0x7f0800e8

    goto/16 :goto_0

    .line 1346
    :catch_b
    move-exception v0

    .line 1347
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0800e8

    .line 1349
    goto/16 :goto_0

    .line 1352
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :pswitch_b
    if-eqz v2, :cond_19

    .line 1353
    :try_start_e
    const-string v6, "symbol_page_4_email_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 1354
    :cond_19
    if-eqz v3, :cond_1a

    .line 1355
    const-string v6, "symbol_page_4_url_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_c

    move-result v4

    goto/16 :goto_0

    .line 1357
    :cond_1a
    const v4, 0x7f0800fb

    goto/16 :goto_0

    .line 1359
    :catch_c
    move-exception v0

    .line 1360
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0800fb

    .line 1362
    goto/16 :goto_0

    .line 1365
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :pswitch_c
    if-eqz v2, :cond_1b

    .line 1366
    :try_start_f
    const-string v6, "symbol_page_5_email_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 1367
    :cond_1b
    if-eqz v3, :cond_1c

    .line 1368
    const-string v6, "symbol_page_5_url_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 1370
    :cond_1c
    const-string v6, "symbol_page_5_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_f} :catch_d

    move-result v4

    goto/16 :goto_0

    .line 1372
    :catch_d
    move-exception v0

    .line 1373
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0800e4

    .line 1375
    goto/16 :goto_0

    .line 1378
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :pswitch_d
    if-eqz v2, :cond_1d

    .line 1379
    :try_start_10
    const-string v6, "symbol_page_6_email_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 1380
    :cond_1d
    if-eqz v3, :cond_1e

    .line 1381
    const-string v6, "symbol_page_6_url_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 1383
    :cond_1e
    const-string v6, "symbol_page_6_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_10} :catch_e

    move-result v4

    goto/16 :goto_0

    .line 1385
    :catch_e
    move-exception v0

    .line 1386
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0800e4

    .line 1388
    goto/16 :goto_0

    .line 1391
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :pswitch_e
    if-eqz v2, :cond_1f

    .line 1392
    :try_start_11
    const-string v6, "symbol_page_7_email_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 1393
    :cond_1f
    if-eqz v3, :cond_20

    .line 1394
    const-string v6, "symbol_page_7_url_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 1396
    :cond_20
    const-string v6, "symbol_page_7_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_11} :catch_f

    move-result v4

    goto/16 :goto_0

    .line 1398
    :catch_f
    move-exception v0

    .line 1399
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0800e4

    .line 1401
    goto/16 :goto_0

    .line 1404
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :pswitch_f
    if-eqz v2, :cond_21

    .line 1405
    :try_start_12
    const-string v6, "symbol_page_8_email_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 1406
    :cond_21
    if-eqz v3, :cond_22

    .line 1407
    const-string v6, "symbol_page_8_url_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 1409
    :cond_22
    const-string v6, "symbol_page_8_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_12} :catch_10

    move-result v4

    goto/16 :goto_0

    .line 1411
    :catch_10
    move-exception v0

    .line 1412
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0800e4

    .line 1414
    goto/16 :goto_0

    .line 1419
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_23
    if-eqz v3, :cond_24

    .line 1420
    :try_start_13
    const-string v6, "symbol_page_1_url_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_13} :catch_11

    move-result v4

    goto/16 :goto_0

    .line 1422
    :cond_24
    const v4, 0x7f0800e4

    goto/16 :goto_0

    .line 1424
    :catch_11
    move-exception v0

    .line 1425
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0800e4

    goto/16 :goto_0

    .line 1190
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 1310
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private getPhonePadNumberKeyboardXmlId()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 358
    const/4 v3, 0x0

    .line 359
    .local v3, "xmlId":I
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v1

    .line 360
    .local v1, "isEnableOneHandKeypad":Z
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v2

    .line 362
    .local v2, "privateImeOptionsInputType":I
    const/16 v4, 0xa

    if-ne v2, v4, :cond_2

    .line 363
    if-eqz v1, :cond_1

    .line 365
    :try_start_0
    const-string v4, "one_hand_phonepad_month"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 467
    :cond_0
    :goto_0
    return v3

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    const v3, 0x7f0501c7

    .line 368
    goto :goto_0

    .line 370
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    const v3, 0x7f0501c7

    goto :goto_0

    .line 372
    :cond_2
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 373
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 374
    if-eqz v1, :cond_3

    .line 376
    :try_start_1
    const-string v4, "one_hand_phonepad_phone_number"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    goto :goto_0

    .line 377
    :catch_1
    move-exception v0

    .line 378
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v3, 0x7f0501d6

    .line 379
    goto :goto_0

    .line 381
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    const v3, 0x7f0501d6

    goto :goto_0

    .line 383
    :cond_4
    const/16 v4, 0x9

    if-eq v2, v4, :cond_5

    const/16 v4, 0xe

    if-ne v2, v4, :cond_7

    .line 385
    :cond_5
    if-eqz v1, :cond_6

    .line 387
    :try_start_2
    const-string v4, "one_hand_phonepad_yeardatetime"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    goto :goto_0

    .line 388
    :catch_2
    move-exception v0

    .line 389
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v3, 0x7f0501f6

    .line 390
    goto :goto_0

    .line 392
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_6
    const v3, 0x7f0501f6

    goto :goto_0

    .line 394
    :cond_7
    if-eqz v1, :cond_f

    .line 395
    if-ne v2, v5, :cond_8

    .line 397
    :try_start_3
    const-string v4, "one_hand_phonepad_number_decimal"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v3

    goto :goto_0

    .line 398
    :catch_3
    move-exception v0

    .line 399
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v3, 0x7f0501ce

    .line 400
    goto :goto_0

    .line 401
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDecimalNumberInputType()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 403
    :try_start_4
    const-string v4, "one_hand_phonepad_number_decimal"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v3

    goto :goto_0

    .line 404
    :catch_4
    move-exception v0

    .line 405
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v3, 0x7f0501ce

    .line 406
    goto :goto_0

    .line 407
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_9
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberOnlyInputType()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 409
    :try_start_5
    const-string v4, "one_hand_phonepad_number_only"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v3

    goto :goto_0

    .line 410
    :catch_5
    move-exception v0

    .line 411
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v3, 0x7f0501d2

    .line 412
    goto :goto_0

    .line 413
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_a
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isSignedNumberInputType()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 415
    :try_start_6
    const-string v4, "one_hand_phonepad_number_signed"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v3

    goto/16 :goto_0

    .line 416
    :catch_6
    move-exception v0

    .line 417
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v3, 0x7f0501d4

    .line 418
    goto/16 :goto_0

    .line 419
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_b
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isSignedDecimalNumberInputType()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 421
    :try_start_7
    const-string v4, "one_hand_phonepad_number_signed_decimal"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v3

    goto/16 :goto_0

    .line 422
    :catch_7
    move-exception v0

    .line 423
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v3, 0x7f0501d5

    .line 424
    goto/16 :goto_0

    .line 425
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_c
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isTimeInputType()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 427
    :try_start_8
    const-string v4, "one_hand_phonepad_time"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v3

    goto/16 :goto_0

    .line 428
    :catch_8
    move-exception v0

    .line 429
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v3, 0x7f0501ee

    .line 430
    goto/16 :goto_0

    .line 431
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_d
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDateInputType()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 433
    :try_start_9
    const-string v4, "one_hand_phonepad_date"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_9

    move-result v3

    goto/16 :goto_0

    .line 434
    :catch_9
    move-exception v0

    .line 435
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v3, 0x7f0501a0

    .line 436
    goto/16 :goto_0

    .line 437
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_e
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDateTimeInputType()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 439
    :try_start_a
    const-string v4, "one_hand_phonepad_datetime"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_a

    move-result v3

    goto/16 :goto_0

    .line 440
    :catch_a
    move-exception v0

    .line 441
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v3, 0x7f0501a1

    .line 442
    goto/16 :goto_0

    .line 444
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_f
    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-eqz v4, :cond_10

    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 445
    :cond_10
    if-ne v2, v5, :cond_11

    .line 446
    const v3, 0x7f0501ce

    goto/16 :goto_0

    .line 447
    :cond_11
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDecimalNumberInputType()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 448
    const v3, 0x7f0501ce

    goto/16 :goto_0

    .line 449
    :cond_12
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberPasswordInputType()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 450
    const v3, 0x7f0501d3

    goto/16 :goto_0

    .line 451
    :cond_13
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberOnlyInputType()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 452
    const v3, 0x7f0501d2

    goto/16 :goto_0

    .line 453
    :cond_14
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isSignedNumberInputType()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 454
    const v3, 0x7f0501d4

    goto/16 :goto_0

    .line 455
    :cond_15
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isSignedDecimalNumberInputType()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 456
    const v3, 0x7f0501d5

    goto/16 :goto_0

    .line 457
    :cond_16
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isTimeInputType()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 458
    const v3, 0x7f0501ee

    goto/16 :goto_0

    .line 459
    :cond_17
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDateInputType()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 460
    const v3, 0x7f0501a0

    goto/16 :goto_0

    .line 461
    :cond_18
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDateTimeInputType()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 462
    const v3, 0x7f0501a1

    goto/16 :goto_0
.end method

.method private getPhonepadXmlId(I)I
    .locals 20
    .param p1, "language"    # I

    .prologue
    .line 3270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v13

    .line 3271
    .local v13, "preference":Landroid/content/SharedPreferences;
    const-string v17, "da_mode"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 3272
    .local v5, "isDaMode":Z
    const-string v17, "da_language"

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 3273
    .local v2, "daLanguage":I
    if-eqz v5, :cond_0

    .line 3274
    move/from16 p1, v2

    .line 3276
    :cond_0
    const/high16 v17, -0x10000

    and-int v12, p1, v17

    .line 3277
    .local v12, "langCode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v8

    .line 3279
    .local v8, "isSpellViewShown":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v14

    .line 3280
    .local v14, "strokeModeOn":Z
    const v16, 0x7f0501a4

    .line 3281
    .local v16, "xmlId":I
    sparse-switch v12, :sswitch_data_0

    .line 3677
    const v16, 0x7f0501a4

    .line 3681
    :goto_0
    return v16

    .line 3284
    :sswitch_0
    :try_start_0
    const-string v17, "phonepad_en"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    goto :goto_0

    .line 3285
    :catch_0
    move-exception v3

    .line 3286
    .local v3, "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3288
    goto :goto_0

    .line 3293
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1
    :try_start_1
    const-string v17, "phonepad_fr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v16

    goto :goto_0

    .line 3294
    :catch_1
    move-exception v3

    .line 3295
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3297
    goto :goto_0

    .line 3300
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2
    :try_start_2
    const-string v17, "phonepad_de"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v16

    goto :goto_0

    .line 3301
    :catch_2
    move-exception v3

    .line 3302
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3304
    goto :goto_0

    .line 3309
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_3
    :try_start_3
    const-string v17, "phonepad_es"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v16

    goto :goto_0

    .line 3310
    :catch_3
    move-exception v3

    .line 3311
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3313
    goto :goto_0

    .line 3316
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_4
    :try_start_4
    const-string v17, "phonepad_it"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v16

    goto :goto_0

    .line 3317
    :catch_4
    move-exception v3

    .line 3318
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3320
    goto :goto_0

    .line 3323
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_5
    :try_start_5
    const-string v17, "phonepad_cs"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v16

    goto :goto_0

    .line 3324
    :catch_5
    move-exception v3

    .line 3325
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3327
    goto :goto_0

    .line 3330
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_6
    :try_start_6
    const-string v17, "phonepad_da"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v16

    goto :goto_0

    .line 3331
    :catch_6
    move-exception v3

    .line 3332
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3334
    goto :goto_0

    .line 3337
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_7
    :try_start_7
    const-string v17, "phonepad_et"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v16

    goto :goto_0

    .line 3338
    :catch_7
    move-exception v3

    .line 3339
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3341
    goto :goto_0

    .line 3344
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_8
    :try_start_8
    const-string v17, "phonepad_hr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v16

    goto :goto_0

    .line 3345
    :catch_8
    move-exception v3

    .line 3346
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3348
    goto :goto_0

    .line 3351
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_9
    :try_start_9
    const-string v17, "phonepad_lv"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_9

    move-result v16

    goto :goto_0

    .line 3352
    :catch_9
    move-exception v3

    .line 3353
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3355
    goto :goto_0

    .line 3358
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_a
    :try_start_a
    const-string v17, "phonepad_lt"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_a

    move-result v16

    goto :goto_0

    .line 3359
    :catch_a
    move-exception v3

    .line 3360
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3362
    goto/16 :goto_0

    .line 3365
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_b
    :try_start_b
    const-string v17, "phonepad_hu"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_b

    move-result v16

    goto/16 :goto_0

    .line 3366
    :catch_b
    move-exception v3

    .line 3367
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3369
    goto/16 :goto_0

    .line 3372
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_c
    :try_start_c
    const-string v17, "phonepad_nb"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_c

    move-result v16

    goto/16 :goto_0

    .line 3373
    :catch_c
    move-exception v3

    .line 3374
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3376
    goto/16 :goto_0

    .line 3379
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_d
    :try_start_d
    const-string v17, "phonepad_nl"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_d

    move-result v16

    goto/16 :goto_0

    .line 3380
    :catch_d
    move-exception v3

    .line 3381
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3383
    goto/16 :goto_0

    .line 3386
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_e
    :try_start_e
    const-string v17, "phonepad_pl"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_e

    move-result v16

    goto/16 :goto_0

    .line 3387
    :catch_e
    move-exception v3

    .line 3388
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3390
    goto/16 :goto_0

    .line 3395
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_f
    :try_start_f
    const-string v17, "phonepad_pt"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_f} :catch_f

    move-result v16

    goto/16 :goto_0

    .line 3396
    :catch_f
    move-exception v3

    .line 3397
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3399
    goto/16 :goto_0

    .line 3402
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_10
    :try_start_10
    const-string v17, "phonepad_ro"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_10} :catch_10

    move-result v16

    goto/16 :goto_0

    .line 3403
    :catch_10
    move-exception v3

    .line 3404
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3406
    goto/16 :goto_0

    .line 3409
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_11
    :try_start_11
    const-string v17, "phonepad_fi"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_11} :catch_11

    move-result v16

    goto/16 :goto_0

    .line 3410
    :catch_11
    move-exception v3

    .line 3411
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3413
    goto/16 :goto_0

    .line 3416
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_12
    :try_start_12
    const-string v17, "phonepad_sr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_12} :catch_12

    move-result v16

    goto/16 :goto_0

    .line 3417
    :catch_12
    move-exception v3

    .line 3418
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3420
    goto/16 :goto_0

    .line 3423
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_13
    :try_start_13
    const-string v17, "phonepad_sv"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_13} :catch_13

    move-result v16

    goto/16 :goto_0

    .line 3424
    :catch_13
    move-exception v3

    .line 3425
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3427
    goto/16 :goto_0

    .line 3430
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_14
    :try_start_14
    const-string v17, "phonepad_sk"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14 .. :try_end_14} :catch_14

    move-result v16

    goto/16 :goto_0

    .line 3431
    :catch_14
    move-exception v3

    .line 3432
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3434
    goto/16 :goto_0

    .line 3437
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_15
    :try_start_15
    const-string v17, "phonepad_sl"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_15} :catch_15

    move-result v16

    goto/16 :goto_0

    .line 3438
    :catch_15
    move-exception v3

    .line 3439
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3441
    goto/16 :goto_0

    .line 3444
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_16
    :try_start_16
    const-string v17, "phonepad_tr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_16} :catch_16

    move-result v16

    goto/16 :goto_0

    .line 3445
    :catch_16
    move-exception v3

    .line 3446
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3448
    goto/16 :goto_0

    .line 3451
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_17
    :try_start_17
    const-string v17, "phonepad_ca"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_17} :catch_17

    move-result v16

    goto/16 :goto_0

    .line 3452
    :catch_17
    move-exception v3

    .line 3453
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3455
    goto/16 :goto_0

    .line 3458
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_18
    :try_start_18
    const-string v17, "phonepad_gl"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_18 .. :try_end_18} :catch_18

    move-result v16

    goto/16 :goto_0

    .line 3459
    :catch_18
    move-exception v3

    .line 3460
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3462
    goto/16 :goto_0

    .line 3465
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_19
    :try_start_19
    const-string v17, "phonepad_eu"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_19 .. :try_end_19} :catch_19

    move-result v16

    goto/16 :goto_0

    .line 3466
    :catch_19
    move-exception v3

    .line 3467
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3469
    goto/16 :goto_0

    .line 3472
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1a
    :try_start_1a
    const-string v17, "phonepad_is"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1a .. :try_end_1a} :catch_1a

    move-result v16

    goto/16 :goto_0

    .line 3473
    :catch_1a
    move-exception v3

    .line 3474
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3476
    goto/16 :goto_0

    .line 3479
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1b
    :try_start_1b
    const-string v17, "phonepad_sq"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1b .. :try_end_1b} :catch_1b

    move-result v16

    goto/16 :goto_0

    .line 3480
    :catch_1b
    move-exception v3

    .line 3481
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3483
    goto/16 :goto_0

    .line 3486
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1c
    :try_start_1c
    const-string v17, "phonepad_az"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1c .. :try_end_1c} :catch_1c

    move-result v16

    goto/16 :goto_0

    .line 3487
    :catch_1c
    move-exception v3

    .line 3488
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3490
    goto/16 :goto_0

    .line 3493
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1d
    :try_start_1d
    const-string v17, "phonepad_id"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1d .. :try_end_1d} :catch_1d

    move-result v16

    goto/16 :goto_0

    .line 3494
    :catch_1d
    move-exception v3

    .line 3495
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3497
    goto/16 :goto_0

    .line 3500
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1e
    :try_start_1e
    const-string v17, "phonepad_ms"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1e .. :try_end_1e} :catch_1e

    move-result v16

    goto/16 :goto_0

    .line 3501
    :catch_1e
    move-exception v3

    .line 3502
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501a4

    .line 3504
    goto/16 :goto_0

    .line 3506
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "KOR_MODE"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v6

    .line 3507
    .local v6, "isKoreaMode":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_DEFAULT_USE_INPUT_METHOD_TYPE_ON_KOR"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v7

    .line 3508
    .local v7, "isSeperatlyKor":Z
    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    .line 3509
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v4

    .line 3511
    .local v4, "hangulModule":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 3512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v10

    .line 3513
    .local v10, "keypadType":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_1

    .line 3514
    const v16, 0x7f0501bb

    .line 3515
    goto/16 :goto_0

    .line 3516
    :cond_1
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v10, v0, :cond_2

    .line 3517
    const v16, 0x7f0501bd

    .line 3518
    goto/16 :goto_0

    .line 3520
    :cond_2
    packed-switch v4, :pswitch_data_0

    .line 3528
    const v16, 0x7f0501bb

    goto/16 :goto_0

    .line 3522
    :pswitch_0
    const v16, 0x7f0501bb

    .line 3523
    goto/16 :goto_0

    .line 3525
    :pswitch_1
    const v16, 0x7f0501bd

    .line 3526
    goto/16 :goto_0

    .line 3533
    .end local v10    # "keypadType":I
    :cond_3
    packed-switch v4, :pswitch_data_1

    .line 3547
    const v16, 0x7f0501bb

    goto/16 :goto_0

    .line 3535
    :pswitch_2
    const v16, 0x7f0501bb

    .line 3536
    goto/16 :goto_0

    .line 3538
    :pswitch_3
    const v16, 0x7f0501bd

    .line 3539
    goto/16 :goto_0

    .line 3541
    :pswitch_4
    const v16, 0x7f0501bf

    .line 3542
    goto/16 :goto_0

    .line 3544
    :pswitch_5
    const v16, 0x7f0501c0

    .line 3545
    goto/16 :goto_0

    .line 3552
    .end local v4    # "hangulModule":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->makeSelectLanguagePrefKey(I)Ljava/lang/String;

    move-result-object v9

    .line 3553
    .local v9, "key":Ljava/lang/String;
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v13, v9, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 3555
    .local v11, "korKeyboardType":I
    packed-switch v11, :pswitch_data_2

    .line 3560
    const v16, 0x7f0501bb

    goto/16 :goto_0

    .line 3557
    :pswitch_6
    const v16, 0x7f0501bd

    .line 3558
    goto/16 :goto_0

    .line 3567
    .end local v6    # "isKoreaMode":Z
    .end local v7    # "isSeperatlyKor":Z
    .end local v9    # "key":Ljava/lang/String;
    .end local v11    # "korKeyboardType":I
    :sswitch_20
    :try_start_1f
    const-string v17, "phonepad_kk"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1f .. :try_end_1f} :catch_1f

    move-result v16

    goto/16 :goto_0

    .line 3568
    :catch_1f
    move-exception v3

    .line 3569
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v16, 0x7f0501dc

    .line 3571
    goto/16 :goto_0

    .line 3573
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_21
    const v16, 0x7f0501dc

    .line 3574
    goto/16 :goto_0

    .line 3576
    :sswitch_22
    const v16, 0x7f050198

    .line 3577
    goto/16 :goto_0

    .line 3579
    :sswitch_23
    const v16, 0x7f0501f2

    .line 3580
    goto/16 :goto_0

    .line 3582
    :sswitch_24
    const v16, 0x7f0501a3

    .line 3583
    goto/16 :goto_0

    .line 3585
    :sswitch_25
    const v17, 0x7a68484b

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 3586
    const v16, 0x7f0501f7

    goto/16 :goto_0

    .line 3587
    :cond_5
    const v17, 0x7a685457

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 3588
    if-eqz v14, :cond_6

    .line 3589
    const v16, 0x7f0501f8

    goto/16 :goto_0

    .line 3591
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getLengthOfSpellText()I

    move-result v17

    if-lez v17, :cond_7

    .line 3592
    const v16, 0x7f0501fa

    goto/16 :goto_0

    .line 3594
    :cond_7
    const v16, 0x7f0501f9

    goto/16 :goto_0

    .line 3598
    :cond_8
    if-eqz v14, :cond_9

    .line 3599
    const v16, 0x7f05019d

    goto/16 :goto_0

    .line 3601
    :cond_9
    if-eqz v8, :cond_a

    .line 3602
    const v16, 0x7f05019c

    goto/16 :goto_0

    .line 3604
    :cond_a
    const v16, 0x7f05019b

    .line 3608
    goto/16 :goto_0

    .line 3610
    :sswitch_26
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentThaiVowelPageNum()I

    move-result v15

    .line 3611
    .local v15, "thaiVowelPage":I
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v15, v0, :cond_b

    .line 3612
    const v16, 0x7f0501eb

    goto/16 :goto_0

    .line 3613
    :cond_b
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_c

    .line 3614
    const v16, 0x7f0501ec

    goto/16 :goto_0

    .line 3615
    :cond_c
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_d

    .line 3616
    const v16, 0x7f0501ed

    goto/16 :goto_0

    .line 3618
    :cond_d
    const v16, 0x7f0501ea

    .line 3620
    goto/16 :goto_0

    .line 3622
    .end local v15    # "thaiVowelPage":I
    :sswitch_27
    const v16, 0x7f0501f5

    .line 3623
    goto/16 :goto_0

    .line 3625
    :sswitch_28
    const v16, 0x7f050196

    .line 3626
    goto/16 :goto_0

    .line 3628
    :sswitch_29
    const v16, 0x7f0501a8

    .line 3629
    goto/16 :goto_0

    .line 3631
    :sswitch_2a
    const v16, 0x7f0501f3

    .line 3632
    goto/16 :goto_0

    .line 3634
    :sswitch_2b
    const v16, 0x7f0501ac

    .line 3635
    goto/16 :goto_0

    .line 3637
    :sswitch_2c
    const v16, 0x7f0501b6

    .line 3638
    goto/16 :goto_0

    .line 3640
    :sswitch_2d
    const v16, 0x7f0501af

    .line 3641
    goto/16 :goto_0

    .line 3643
    :sswitch_2e
    const v16, 0x7f0501c5

    .line 3644
    goto/16 :goto_0

    .line 3646
    :sswitch_2f
    const v16, 0x7f0501b8

    .line 3647
    goto/16 :goto_0

    .line 3649
    :sswitch_30
    const v16, 0x7f0501c2

    .line 3650
    goto/16 :goto_0

    .line 3652
    :sswitch_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 3653
    const v16, 0x7f0501b4

    goto/16 :goto_0

    .line 3655
    :cond_e
    const v16, 0x7f0501b3

    .line 3657
    goto/16 :goto_0

    .line 3659
    :sswitch_32
    const v16, 0x7f0501c6

    .line 3660
    goto/16 :goto_0

    .line 3662
    :sswitch_33
    const v16, 0x7f0501f4

    .line 3663
    goto/16 :goto_0

    .line 3665
    :sswitch_34
    const v16, 0x7f0501c1

    .line 3666
    goto/16 :goto_0

    .line 3668
    :sswitch_35
    const v16, 0x7f0501e9

    .line 3669
    goto/16 :goto_0

    .line 3671
    :sswitch_36
    const v16, 0x7f0501ef

    .line 3672
    goto/16 :goto_0

    .line 3674
    :sswitch_37
    const v16, 0x7f050195

    .line 3675
    goto/16 :goto_0

    .line 3281
    nop

    :sswitch_data_0
    .sparse-switch
        0x61660000 -> :sswitch_37
        0x61720000 -> :sswitch_28
        0x617a0000 -> :sswitch_1c
        0x62670000 -> :sswitch_22
        0x63610000 -> :sswitch_17
        0x63730000 -> :sswitch_5
        0x64610000 -> :sswitch_6
        0x64650000 -> :sswitch_2
        0x656c0000 -> :sswitch_24
        0x656e0000 -> :sswitch_0
        0x65730000 -> :sswitch_3
        0x65734553 -> :sswitch_3
        0x65735553 -> :sswitch_3
        0x65740000 -> :sswitch_7
        0x65750000 -> :sswitch_19
        0x66610000 -> :sswitch_29
        0x66690000 -> :sswitch_11
        0x66720000 -> :sswitch_1
        0x66724341 -> :sswitch_1
        0x66724652 -> :sswitch_1
        0x676c0000 -> :sswitch_18
        0x68720000 -> :sswitch_8
        0x68750000 -> :sswitch_b
        0x68790000 -> :sswitch_2d
        0x69640000 -> :sswitch_1d
        0x69730000 -> :sswitch_1a
        0x69740000 -> :sswitch_4
        0x69770000 -> :sswitch_2b
        0x6a610000 -> :sswitch_31
        0x6b610000 -> :sswitch_2c
        0x6b6b0000 -> :sswitch_20
        0x6b6d0000 -> :sswitch_2f
        0x6b6f0000 -> :sswitch_1f
        0x6b790000 -> :sswitch_34
        0x6c6f0000 -> :sswitch_30
        0x6c740000 -> :sswitch_a
        0x6c760000 -> :sswitch_9
        0x6d6b0000 -> :sswitch_2e
        0x6d6e0000 -> :sswitch_32
        0x6d730000 -> :sswitch_1e
        0x6e620000 -> :sswitch_c
        0x6e6c0000 -> :sswitch_d
        0x706c0000 -> :sswitch_e
        0x70740000 -> :sswitch_f
        0x70744252 -> :sswitch_f
        0x70745054 -> :sswitch_f
        0x726f0000 -> :sswitch_10
        0x72750000 -> :sswitch_21
        0x736b0000 -> :sswitch_14
        0x736c0000 -> :sswitch_15
        0x73710000 -> :sswitch_1b
        0x73720000 -> :sswitch_12
        0x73760000 -> :sswitch_13
        0x74670000 -> :sswitch_35
        0x74680000 -> :sswitch_26
        0x746b0000 -> :sswitch_36
        0x74720000 -> :sswitch_16
        0x756b0000 -> :sswitch_23
        0x75720000 -> :sswitch_2a
        0x757a0000 -> :sswitch_33
        0x76690000 -> :sswitch_27
        0x7a680000 -> :sswitch_25
    .end sparse-switch

    .line 3520
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3533
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 3555
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_6
    .end packed-switch
.end method

.method private getQwertyKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 7

    .prologue
    .line 8144
    const-string v4, "SamsungIME"

    const-string v5, "getQwertyKeyboard"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8145
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "INPUT_LANGUAGE"

    const v6, 0x656e4742

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    .line 8146
    .local v1, "language":I
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 8148
    .local v0, "info":Landroid/view/inputmethod/EditorInfo;
    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getQwertyKeyboardXmlId(I)I

    move-result v3

    .line 8149
    .local v3, "xmlId":I
    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I

    move-result v2

    .line 8151
    .local v2, "modeId":I
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 8152
    iget-object v4, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v4, v3, :cond_0

    iget v4, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v4, v2, :cond_0

    iget-boolean v4, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v5

    if-eq v4, v5, :cond_4

    .line 8154
    :cond_0
    if-eqz v2, :cond_2

    .line 8155
    new-instance v5, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    :goto_0
    invoke-direct {v5, v4, v3, v2}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 8160
    :goto_1
    iget-object v4, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-direct {p0, v4, v3, v2}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    .line 8165
    :goto_2
    iget-object v4, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    return-object v4

    .line 8155
    :cond_1
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v4

    goto :goto_0

    .line 8157
    :cond_2
    new-instance v5, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    :goto_3
    invoke-direct {v5, v4, v3}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v4

    goto :goto_3

    .line 8162
    :cond_4
    iget-object v4, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iput-object v4, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_2
.end method

.method private getQwertyKeyboardXmlId(I)I
    .locals 17
    .param p1, "language"    # I

    .prologue
    .line 2360
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v10

    .line 2361
    .local v10, "preference":Landroid/content/SharedPreferences;
    const-string v14, "da_mode"

    const/4 v15, 0x0

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 2362
    .local v6, "isDaMode":Z
    const-string v14, "da_language"

    const/4 v15, -0x1

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2364
    .local v2, "daLanguage":I
    if-eqz v6, :cond_0

    .line 2365
    move/from16 p1, v2

    .line 2367
    :cond_0
    const/high16 v14, -0x10000

    and-int v8, p1, v14

    .line 2370
    .local v8, "langCode":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    .line 2371
    .local v11, "sLocal":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2372
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputCountryCode()Ljava/lang/String;

    move-result-object v5

    .line 2373
    .local v5, "inputLanguageLocal":Ljava/lang/String;
    const-string v14, ""

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "CH"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    const v14, 0x66724652

    move/from16 v0, p1

    if-eq v0, v14, :cond_2

    .line 2375
    :cond_1
    move-object v11, v5

    .line 2379
    .end local v5    # "inputLanguageLocal":Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    .line 2381
    .local v9, "locale":Ljava/lang/String;
    const v13, 0x7f050212

    .line 2383
    .local v13, "xmlId":I
    sparse-switch v8, :sswitch_data_0

    .line 2654
    const v13, 0x7f050212

    .line 2658
    :cond_3
    :goto_0
    return v13

    .line 2385
    :sswitch_0
    const v13, 0x7f050219

    .line 2386
    goto :goto_0

    .line 2388
    :sswitch_1
    const v13, 0x7f05020c

    .line 2389
    goto :goto_0

    .line 2391
    :sswitch_2
    const v13, 0x7f050217

    .line 2392
    goto :goto_0

    .line 2394
    :sswitch_3
    const v13, 0x7f050221

    .line 2395
    goto :goto_0

    .line 2397
    :sswitch_4
    const v13, 0x7f050229

    .line 2398
    goto :goto_0

    .line 2400
    :sswitch_5
    const v13, 0x7f05022b

    .line 2401
    goto :goto_0

    .line 2403
    :sswitch_6
    const v13, 0x7f05024b

    .line 2404
    goto :goto_0

    .line 2406
    :sswitch_7
    const v13, 0x7f05024d

    .line 2407
    goto :goto_0

    .line 2409
    :sswitch_8
    const v13, 0x7f050251

    .line 2410
    goto :goto_0

    .line 2412
    :sswitch_9
    const v13, 0x7f050250

    .line 2413
    goto :goto_0

    .line 2415
    :sswitch_a
    const v13, 0x7f050208

    .line 2416
    goto :goto_0

    .line 2418
    :sswitch_b
    const v13, 0x7f05022d

    .line 2419
    goto :goto_0

    .line 2421
    :sswitch_c
    const v13, 0x7f05024a

    .line 2422
    goto :goto_0

    .line 2424
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v12

    .line 2425
    .local v12, "turkishKeyboardType":I
    packed-switch v12, :pswitch_data_0

    .line 2433
    const v13, 0x7f050212

    .line 2434
    goto :goto_0

    .line 2427
    :pswitch_0
    const v13, 0x7f050255

    .line 2428
    goto :goto_0

    .line 2430
    :pswitch_1
    const v13, 0x7f050256

    .line 2431
    goto :goto_0

    .line 2447
    .end local v12    # "turkishKeyboardType":I
    :sswitch_e
    const v13, 0x7f050212

    .line 2448
    goto :goto_0

    .line 2451
    :sswitch_f
    :try_start_0
    const-string v14, "qwerty_sl"

    invoke-static {v14}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    goto :goto_0

    .line 2453
    :catch_0
    move-exception v14

    .line 2460
    :sswitch_10
    const v13, 0x7f050260

    .line 2461
    goto :goto_0

    .line 2463
    :sswitch_11
    const-string v14, "BE"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 2464
    const/high16 v13, 0x7f050000

    goto :goto_0

    .line 2466
    :cond_4
    const v13, 0x7f050212

    .line 2468
    goto :goto_0

    .line 2472
    :sswitch_12
    const v13, 0x7f050213

    .line 2473
    goto :goto_0

    .line 2475
    :sswitch_13
    const-string v14, "CH"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 2476
    const v13, 0x7f050260

    goto :goto_0

    .line 2478
    :cond_5
    const v13, 0x7f05021c

    .line 2480
    goto/16 :goto_0

    .line 2482
    :sswitch_14
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v7

    .line 2484
    .local v7, "isPasswordMode":Z
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsKorMode:Z

    if-eqz v14, :cond_6

    if-eqz v7, :cond_6

    .line 2485
    const v13, 0x7f050223

    goto/16 :goto_0

    .line 2487
    :cond_6
    const v13, 0x7f050222

    .line 2489
    goto/16 :goto_0

    .line 2493
    .end local v7    # "isPasswordMode":Z
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_9

    .line 2494
    const v14, 0x66724341

    move/from16 v0, p1

    if-eq v0, v14, :cond_7

    const/high16 v14, 0x66720000

    move/from16 v0, p1

    if-ne v0, v14, :cond_8

    const-string v14, "CA"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 2496
    :cond_7
    const v13, 0x7f050212

    goto/16 :goto_0

    .line 2498
    :cond_8
    const/high16 v13, 0x7f050000

    goto/16 :goto_0

    .line 2501
    :cond_9
    const-string v14, "CA"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 2502
    const v13, 0x7f050212

    goto/16 :goto_0

    .line 2503
    :cond_a
    const-string v14, "CH"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 2504
    const v13, 0x7f050260

    goto/16 :goto_0

    .line 2506
    :cond_b
    const/high16 v13, 0x7f050000

    .line 2509
    goto/16 :goto_0

    .line 2511
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "SETTINGS_GERMAN_KEYBOARD_TYPE"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    .line 2512
    .local v4, "germanKeyboardType":I
    packed-switch v4, :pswitch_data_1

    .line 2521
    const v13, 0x7f050261

    .line 2522
    goto/16 :goto_0

    .line 2515
    :pswitch_2
    :try_start_1
    const-string v14, "qwertz_de_plus"

    invoke-static {v14}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v13

    goto/16 :goto_0

    .line 2516
    :catch_1
    move-exception v3

    .line 2517
    .local v3, "exception":Landroid/content/res/Resources$NotFoundException;
    const v13, 0x7f050261

    .line 2519
    goto/16 :goto_0

    .line 2526
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    .end local v4    # "germanKeyboardType":I
    :sswitch_17
    const v13, 0x7f05021f

    .line 2527
    goto/16 :goto_0

    .line 2529
    :sswitch_18
    const v13, 0x7f05024c

    .line 2530
    goto/16 :goto_0

    .line 2532
    :sswitch_19
    const v13, 0x7f05020f

    .line 2533
    goto/16 :goto_0

    .line 2535
    :sswitch_1a
    const v13, 0x7f05022c

    .line 2536
    goto/16 :goto_0

    .line 2539
    :sswitch_1b
    const v13, 0x7f050216

    .line 2540
    goto/16 :goto_0

    .line 2542
    :sswitch_1c
    const v13, 0x7f050257

    .line 2543
    goto/16 :goto_0

    .line 2545
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "SETTINGS_BULGARIAN_KEYBOARD_TYPE"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    .line 2546
    .local v1, "bulgarianKeyboardType":I
    packed-switch v1, :pswitch_data_2

    .line 2555
    const v13, 0x7f05020a

    .line 2556
    goto/16 :goto_0

    .line 2549
    :pswitch_3
    :try_start_2
    const-string v14, "qwerty_bg_phonetic"

    invoke-static {v14}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v13

    goto/16 :goto_0

    .line 2550
    :catch_2
    move-exception v3

    .line 2551
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v13, 0x7f05020a

    .line 2553
    goto/16 :goto_0

    .line 2560
    .end local v1    # "bulgarianKeyboardType":I
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1e
    const v13, 0x7f050210

    .line 2561
    goto/16 :goto_0

    .line 2563
    :sswitch_1f
    const v13, 0x7f050227

    .line 2564
    goto/16 :goto_0

    .line 2566
    :sswitch_20
    const v13, 0x7f05021b

    .line 2567
    goto/16 :goto_0

    .line 2570
    :sswitch_21
    const v14, 0x7a68484b

    move/from16 v0, p1

    if-ne v0, v14, :cond_c

    .line 2571
    const v13, 0x7f05025c

    goto/16 :goto_0

    .line 2572
    :cond_c
    const v14, 0x7a685457

    move/from16 v0, p1

    if-ne v0, v14, :cond_d

    .line 2573
    const v13, 0x7f05025d

    goto/16 :goto_0

    .line 2575
    :cond_d
    const v13, 0x7f05020d

    .line 2577
    goto/16 :goto_0

    .line 2579
    :sswitch_22
    const v13, 0x7f050253

    .line 2580
    goto/16 :goto_0

    .line 2582
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v14

    if-nez v14, :cond_e

    invoke-static {}, Lcom/diotek/ime/framework/input/Telex/Telex;->getVietnameseInputMode()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_e

    .line 2583
    const v13, 0x7f05025b

    goto/16 :goto_0

    .line 2585
    :cond_e
    const v13, 0x7f05025a

    .line 2586
    goto/16 :goto_0

    .line 2588
    :sswitch_24
    const v13, 0x7f050207

    .line 2589
    goto/16 :goto_0

    .line 2591
    :sswitch_25
    const v13, 0x7f050215

    .line 2592
    goto/16 :goto_0

    .line 2594
    :sswitch_26
    const v13, 0x7f050258

    .line 2595
    goto/16 :goto_0

    .line 2597
    :sswitch_27
    const v13, 0x7f050218

    .line 2598
    goto/16 :goto_0

    .line 2600
    :sswitch_28
    const v13, 0x7f05021e

    .line 2601
    goto/16 :goto_0

    .line 2603
    :sswitch_29
    const v13, 0x7f05021a

    .line 2604
    goto/16 :goto_0

    .line 2606
    :sswitch_2a
    const v13, 0x7f050209

    .line 2607
    goto/16 :goto_0

    .line 2609
    :sswitch_2b
    const v13, 0x7f050226

    .line 2610
    goto/16 :goto_0

    .line 2612
    :sswitch_2c
    const v13, 0x7f050228

    .line 2613
    goto/16 :goto_0

    .line 2615
    :sswitch_2d
    const v13, 0x7f050214

    .line 2616
    goto/16 :goto_0

    .line 2618
    :sswitch_2e
    const v13, 0x7f05024f

    .line 2619
    goto/16 :goto_0

    .line 2621
    :sswitch_2f
    const v13, 0x7f050220

    .line 2622
    goto/16 :goto_0

    .line 2624
    :sswitch_30
    const v13, 0x7f050225

    .line 2625
    goto/16 :goto_0

    .line 2627
    :sswitch_31
    const v14, 0x6d795a57

    move/from16 v0, p1

    if-ne v0, v14, :cond_3

    .line 2628
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 2629
    const v13, 0x7f05025f

    goto/16 :goto_0

    .line 2631
    :cond_f
    const v13, 0x7f05025e

    goto/16 :goto_0

    .line 2636
    :sswitch_32
    const v13, 0x7f05021d

    .line 2637
    goto/16 :goto_0

    .line 2639
    :sswitch_33
    const v13, 0x7f05022a

    .line 2640
    goto/16 :goto_0

    .line 2642
    :sswitch_34
    const v13, 0x7f050259

    .line 2643
    goto/16 :goto_0

    .line 2645
    :sswitch_35
    const v13, 0x7f050224

    .line 2646
    goto/16 :goto_0

    .line 2648
    :sswitch_36
    const v13, 0x7f050252

    .line 2649
    goto/16 :goto_0

    .line 2651
    :sswitch_37
    const v13, 0x7f050254

    .line 2652
    goto/16 :goto_0

    .line 2383
    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_24
        0x61730000 -> :sswitch_a
        0x617a0000 -> :sswitch_2a
        0x62670000 -> :sswitch_1d
        0x626e0000 -> :sswitch_1
        0x63610000 -> :sswitch_e
        0x63730000 -> :sswitch_10
        0x64610000 -> :sswitch_19
        0x64650000 -> :sswitch_16
        0x656c0000 -> :sswitch_1e
        0x656e0000 -> :sswitch_e
        0x65730000 -> :sswitch_12
        0x65734553 -> :sswitch_12
        0x65735553 -> :sswitch_12
        0x65740000 -> :sswitch_2d
        0x65750000 -> :sswitch_e
        0x66610000 -> :sswitch_25
        0x66690000 -> :sswitch_1b
        0x66720000 -> :sswitch_15
        0x66724341 -> :sswitch_15
        0x66724652 -> :sswitch_15
        0x676c0000 -> :sswitch_e
        0x67750000 -> :sswitch_2
        0x68690000 -> :sswitch_0
        0x68720000 -> :sswitch_10
        0x68750000 -> :sswitch_10
        0x68790000 -> :sswitch_29
        0x69640000 -> :sswitch_e
        0x69730000 -> :sswitch_20
        0x69740000 -> :sswitch_13
        0x69770000 -> :sswitch_27
        0x6a610000 -> :sswitch_32
        0x6b610000 -> :sswitch_28
        0x6b6b0000 -> :sswitch_17
        0x6b6d0000 -> :sswitch_2f
        0x6b6e0000 -> :sswitch_3
        0x6b6f0000 -> :sswitch_14
        0x6b790000 -> :sswitch_35
        0x6c6f0000 -> :sswitch_30
        0x6c740000 -> :sswitch_2b
        0x6c760000 -> :sswitch_1f
        0x6d6b0000 -> :sswitch_2c
        0x6d6c0000 -> :sswitch_4
        0x6d6e0000 -> :sswitch_33
        0x6d720000 -> :sswitch_5
        0x6d730000 -> :sswitch_e
        0x6d790000 -> :sswitch_31
        0x6e620000 -> :sswitch_1a
        0x6e650000 -> :sswitch_b
        0x6e6c0000 -> :sswitch_11
        0x6f720000 -> :sswitch_c
        0x70610000 -> :sswitch_6
        0x706c0000 -> :sswitch_e
        0x70740000 -> :sswitch_e
        0x726f0000 -> :sswitch_e
        0x72750000 -> :sswitch_18
        0x73690000 -> :sswitch_7
        0x736b0000 -> :sswitch_e
        0x736c0000 -> :sswitch_f
        0x73710000 -> :sswitch_2e
        0x73720000 -> :sswitch_10
        0x73760000 -> :sswitch_1b
        0x74610000 -> :sswitch_9
        0x74650000 -> :sswitch_8
        0x74670000 -> :sswitch_36
        0x74680000 -> :sswitch_22
        0x746b0000 -> :sswitch_37
        0x74720000 -> :sswitch_d
        0x756b0000 -> :sswitch_1c
        0x75720000 -> :sswitch_26
        0x757a0000 -> :sswitch_34
        0x76690000 -> :sswitch_23
        0x7a680000 -> :sswitch_21
        0x7a68434e -> :sswitch_21
    .end sparse-switch

    .line 2425
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2512
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    .line 2546
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method private getSoftFuncKbd()Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 5

    .prologue
    .line 184
    const-string v3, "SamsungIME"

    const-string v4, "getSoftFuncKbd"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 188
    const/4 v2, 0x0

    .line 189
    .local v2, "xmlId":I
    const/4 v1, 0x0

    .line 191
    .local v1, "modeId":I
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 194
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getSoftFuncKbdXmlId()I

    move-result v2

    .line 195
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getSoftFuncKbdModeId()I

    move-result v1

    .line 197
    iget-object v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v3, v2, :cond_0

    iget v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v3, v1, :cond_0

    iget-boolean v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v4

    if-eq v3, v4, :cond_3

    .line 199
    :cond_0
    if-eqz v1, :cond_2

    .line 201
    :try_start_0
    new-instance v3, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2, v1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    iget-object v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-direct {p0, v3, v2, v1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    .line 218
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    return-object v3

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v3, "SamsungIME"

    const-string v4, "OutOfMemoryError occurs in DefaultKeyboard"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 207
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    :try_start_1
    new-instance v3, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 208
    :catch_1
    move-exception v0

    .line 209
    .restart local v0    # "e":Ljava/lang/OutOfMemoryError;
    const-string v3, "SamsungIME"

    const-string v4, "OutOfMemoryError occurs in DefaultKeyboard"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 214
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_3
    iget-object v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iput-object v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_1
.end method

.method private getSoftFuncKbdModeId()I
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentSoftFuncKeyCode()I

    move-result v0

    const/16 v1, -0xa2

    if-ne v0, v1, :cond_0

    .line 244
    const v0, 0x7f0800ff

    .line 248
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSoftFuncKbdXmlId()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 222
    const/4 v1, 0x0

    .line 223
    .local v1, "xmlId":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v0

    .line 224
    .local v0, "phoneNumberEditor":Z
    if-eqz v0, :cond_1

    .line 225
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v2

    array-length v2, v2

    if-le v2, v3, :cond_0

    .line 226
    const v1, 0x7f050193

    .line 238
    :goto_0
    return v1

    .line 228
    :cond_0
    const v1, 0x7f050194

    goto :goto_0

    .line 231
    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v2

    array-length v2, v2

    if-le v2, v3, :cond_2

    .line 232
    const v1, 0x7f050263

    goto :goto_0

    .line 234
    :cond_2
    const v1, 0x7f050264

    goto :goto_0
.end method

.method private getSplitLeftKeyboardXmlId(I)I
    .locals 14
    .param p1, "language"    # I

    .prologue
    .line 6071
    const/high16 v11, -0x10000

    and-int v6, p1, v11

    .line 6074
    .local v6, "langCode":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    .line 6075
    .local v8, "sLocal":Ljava/lang/String;
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 6076
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputCountryCode()Ljava/lang/String;

    move-result-object v4

    .line 6077
    .local v4, "inputLanguageLocal":Ljava/lang/String;
    const-string v11, ""

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "CH"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const v11, 0x66724652

    if-eq p1, v11, :cond_1

    .line 6079
    :cond_0
    move-object v8, v4

    .line 6082
    .end local v4    # "inputLanguageLocal":Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 6084
    .local v7, "locale":Ljava/lang/String;
    const/4 v10, 0x0

    .line 6086
    .local v10, "xmlId":I
    :try_start_0
    const-string v11, "split_en_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 6091
    :goto_0
    sparse-switch v6, :sswitch_data_0

    .line 6659
    :try_start_1
    const-string v11, "split_en_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_4b

    move-result v10

    .line 6666
    :cond_2
    :goto_1
    return v10

    .line 6087
    :catch_0
    move-exception v2

    .line 6088
    .local v2, "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050212

    goto :goto_0

    .line 6103
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_0
    :try_start_2
    const-string v11, "split_en_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v10

    goto :goto_1

    .line 6104
    :catch_1
    move-exception v2

    .line 6105
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050212

    .line 6107
    goto :goto_1

    .line 6110
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1
    :try_start_3
    const-string v11, "split_sl_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v10

    goto :goto_1

    .line 6112
    :catch_2
    move-exception v11

    .line 6120
    :sswitch_2
    :try_start_4
    const-string v11, "split_qwertz_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v10

    goto :goto_1

    .line 6121
    :catch_3
    move-exception v2

    .line 6122
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050260

    .line 6124
    goto :goto_1

    .line 6127
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_3
    :try_start_5
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v9

    .line 6128
    .local v9, "turkishKeyboardType":I
    packed-switch v9, :pswitch_data_0

    .line 6136
    const-string v11, "split_en_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_1

    .line 6130
    :pswitch_0
    const-string v11, "split_tr_qwerty_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    .line 6131
    goto :goto_1

    .line 6133
    :pswitch_1
    const-string v11, "split_tr_f_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v10

    .line 6134
    goto :goto_1

    .line 6139
    .end local v9    # "turkishKeyboardType":I
    :catch_4
    move-exception v2

    .line 6140
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050212

    .line 6142
    goto :goto_1

    .line 6144
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_4
    const-string v11, "BE"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 6146
    :try_start_6
    const-string v11, "split_azerty_fr_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    move-result v10

    goto :goto_1

    .line 6147
    :catch_5
    move-exception v2

    .line 6148
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const/high16 v10, 0x7f050000

    .line 6149
    goto :goto_1

    .line 6152
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    :try_start_7
    const-string v11, "split_en_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    move-result v10

    goto :goto_1

    .line 6153
    :catch_6
    move-exception v2

    .line 6154
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050212

    .line 6157
    goto :goto_1

    .line 6162
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_5
    :try_start_8
    const-string v11, "split_es_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_7

    move-result v10

    goto :goto_1

    .line 6163
    :catch_7
    move-exception v2

    .line 6164
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050213

    .line 6166
    goto :goto_1

    .line 6168
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_6
    const-string v11, "CH"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 6170
    :try_start_9
    const-string v11, "split_qwertz_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_8

    move-result v10

    goto/16 :goto_1

    .line 6171
    :catch_8
    move-exception v2

    .line 6172
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050260

    .line 6173
    goto/16 :goto_1

    .line 6176
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_4
    :try_start_a
    const-string v11, "split_it_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_9

    move-result v10

    goto/16 :goto_1

    .line 6177
    :catch_9
    move-exception v2

    .line 6178
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05021c

    .line 6181
    goto/16 :goto_1

    .line 6183
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_7
    iget-boolean v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsKorMode:Z

    if-eqz v11, :cond_8

    .line 6184
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v5

    .line 6185
    .local v5, "keypadType":I
    const/4 v11, 0x1

    if-ne v5, v11, :cond_5

    .line 6187
    :try_start_b
    const-string v11, "split_kr_cji_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_a

    move-result v10

    goto/16 :goto_1

    .line 6188
    :catch_a
    move-exception v2

    .line 6189
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050222

    .line 6190
    goto/16 :goto_1

    .line 6191
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_5
    const/4 v11, 0x2

    if-ne v5, v11, :cond_6

    .line 6193
    :try_start_c
    const-string v11, "split_kr_cji_turbo_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_b

    move-result v10

    goto/16 :goto_1

    .line 6194
    :catch_b
    move-exception v2

    .line 6195
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050222

    .line 6196
    goto/16 :goto_1

    .line 6197
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_6
    if-nez v5, :cond_2

    .line 6198
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 6200
    :try_start_d
    const-string v11, "split_kr_to_en_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_c

    move-result v10

    goto/16 :goto_1

    .line 6201
    :catch_c
    move-exception v2

    .line 6202
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050223

    .line 6203
    goto/16 :goto_1

    .line 6206
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_7
    :try_start_e
    const-string v11, "split_kr_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_d

    move-result v10

    goto/16 :goto_1

    .line 6207
    :catch_d
    move-exception v2

    .line 6208
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050222

    goto/16 :goto_1

    .line 6214
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    .end local v5    # "keypadType":I
    :cond_8
    :try_start_f
    const-string v11, "split_kr_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_f} :catch_e

    move-result v10

    goto/16 :goto_1

    .line 6215
    :catch_e
    move-exception v2

    .line 6216
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050222

    .line 6219
    goto/16 :goto_1

    .line 6223
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_8
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_a

    .line 6224
    const v11, 0x66724341

    if-ne p1, v11, :cond_9

    .line 6226
    :try_start_10
    const-string v11, "split_en_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_10} :catch_f

    move-result v10

    goto/16 :goto_1

    .line 6227
    :catch_f
    move-exception v2

    .line 6228
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050212

    .line 6229
    goto/16 :goto_1

    .line 6232
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_9
    :try_start_11
    const-string v11, "split_azerty_fr_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_11} :catch_10

    move-result v10

    goto/16 :goto_1

    .line 6233
    :catch_10
    move-exception v2

    .line 6234
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const/high16 v10, 0x7f050000

    .line 6235
    goto/16 :goto_1

    .line 6238
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_a
    const-string v11, "CA"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 6240
    :try_start_12
    const-string v11, "split_en_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_12} :catch_11

    move-result v10

    goto/16 :goto_1

    .line 6241
    :catch_11
    move-exception v2

    .line 6242
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050212

    .line 6243
    goto/16 :goto_1

    .line 6244
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_b
    const-string v11, "CH"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 6246
    :try_start_13
    const-string v11, "split_qwertz_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_13} :catch_12

    move-result v10

    goto/16 :goto_1

    .line 6247
    :catch_12
    move-exception v2

    .line 6248
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050260

    .line 6249
    goto/16 :goto_1

    .line 6252
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_c
    :try_start_14
    const-string v11, "split_azerty_fr_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14 .. :try_end_14} :catch_13

    move-result v10

    goto/16 :goto_1

    .line 6253
    :catch_13
    move-exception v2

    .line 6254
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const/high16 v10, 0x7f050000

    .line 6258
    goto/16 :goto_1

    .line 6260
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_9
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "SETTINGS_GERMAN_KEYBOARD_TYPE"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    .line 6261
    .local v3, "germanKeyboardType":I
    packed-switch v3, :pswitch_data_1

    .line 6271
    :try_start_15
    const-string v11, "split_qwertz_de_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_15} :catch_15

    move-result v10

    goto/16 :goto_1

    .line 6264
    :pswitch_2
    :try_start_16
    const-string v11, "split_qwertz_de_plus_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_16} :catch_14

    move-result v10

    goto/16 :goto_1

    .line 6265
    :catch_14
    move-exception v2

    .line 6266
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050261

    .line 6268
    goto/16 :goto_1

    .line 6272
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :catch_15
    move-exception v2

    .line 6273
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050261

    .line 6275
    goto/16 :goto_1

    .line 6280
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    .end local v3    # "germanKeyboardType":I
    :sswitch_a
    :try_start_17
    const-string v11, "split_kk_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_17} :catch_16

    move-result v10

    goto/16 :goto_1

    .line 6282
    :catch_16
    move-exception v11

    .line 6287
    :sswitch_b
    :try_start_18
    const-string v11, "split_ru_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_18 .. :try_end_18} :catch_17

    move-result v10

    goto/16 :goto_1

    .line 6288
    :catch_17
    move-exception v2

    .line 6289
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05024c

    .line 6291
    goto/16 :goto_1

    .line 6294
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_c
    :try_start_19
    const-string v11, "split_mn_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_19 .. :try_end_19} :catch_18

    move-result v10

    goto/16 :goto_1

    .line 6295
    :catch_18
    move-exception v2

    .line 6296
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05022a

    .line 6298
    goto/16 :goto_1

    .line 6301
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_d
    :try_start_1a
    const-string v11, "split_ky_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1a .. :try_end_1a} :catch_19

    move-result v10

    goto/16 :goto_1

    .line 6302
    :catch_19
    move-exception v2

    .line 6303
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050224

    .line 6305
    goto/16 :goto_1

    .line 6308
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_e
    :try_start_1b
    const-string v11, "split_tg_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1b .. :try_end_1b} :catch_1a

    move-result v10

    goto/16 :goto_1

    .line 6309
    :catch_1a
    move-exception v2

    .line 6310
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050252

    .line 6312
    goto/16 :goto_1

    .line 6315
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_f
    :try_start_1c
    const-string v11, "split_tk_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1c .. :try_end_1c} :catch_1b

    move-result v10

    goto/16 :goto_1

    .line 6316
    :catch_1b
    move-exception v2

    .line 6317
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050254

    .line 6319
    goto/16 :goto_1

    .line 6322
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_10
    :try_start_1d
    const-string v11, "split_da_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1d .. :try_end_1d} :catch_1c

    move-result v10

    goto/16 :goto_1

    .line 6323
    :catch_1c
    move-exception v2

    .line 6324
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05020f

    .line 6326
    goto/16 :goto_1

    .line 6329
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_11
    :try_start_1e
    const-string v11, "split_nb_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1e .. :try_end_1e} :catch_1d

    move-result v10

    goto/16 :goto_1

    .line 6330
    :catch_1d
    move-exception v2

    .line 6331
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05022c

    .line 6333
    goto/16 :goto_1

    .line 6337
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_12
    :try_start_1f
    const-string v11, "split_fi_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1f .. :try_end_1f} :catch_1e

    move-result v10

    goto/16 :goto_1

    .line 6338
    :catch_1e
    move-exception v2

    .line 6339
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050216

    .line 6341
    goto/16 :goto_1

    .line 6344
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_13
    :try_start_20
    const-string v11, "split_uk_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_20 .. :try_end_20} :catch_1f

    move-result v10

    goto/16 :goto_1

    .line 6345
    :catch_1f
    move-exception v2

    .line 6346
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050257

    .line 6348
    goto/16 :goto_1

    .line 6350
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_14
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "SETTINGS_BULGARIAN_KEYBOARD_TYPE"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    .line 6351
    .local v0, "bulgarianKeyboardType":I
    packed-switch v0, :pswitch_data_2

    .line 6365
    :try_start_21
    const-string v11, "split_bg_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_21
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_21 .. :try_end_21} :catch_22

    move-result v10

    goto/16 :goto_1

    .line 6354
    :pswitch_3
    :try_start_22
    const-string v11, "split_bg_phonetic_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_22
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_22 .. :try_end_22} :catch_20

    move-result v10

    goto/16 :goto_1

    .line 6355
    :catch_20
    move-exception v2

    .line 6357
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :try_start_23
    const-string v11, "split_bg_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_23 .. :try_end_23} :catch_21

    move-result v10

    goto/16 :goto_1

    .line 6358
    :catch_21
    move-exception v1

    .line 6359
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05020a

    goto/16 :goto_1

    .line 6366
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :catch_22
    move-exception v2

    .line 6367
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05020a

    .line 6369
    goto/16 :goto_1

    .line 6374
    .end local v0    # "bulgarianKeyboardType":I
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_15
    :try_start_24
    const-string v11, "split_el_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_24 .. :try_end_24} :catch_23

    move-result v10

    goto/16 :goto_1

    .line 6375
    :catch_23
    move-exception v2

    .line 6376
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050210

    .line 6378
    goto/16 :goto_1

    .line 6381
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_16
    :try_start_25
    const-string v11, "split_lv_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_25 .. :try_end_25} :catch_24

    move-result v10

    goto/16 :goto_1

    .line 6382
    :catch_24
    move-exception v2

    .line 6383
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050227

    .line 6385
    goto/16 :goto_1

    .line 6388
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_17
    :try_start_26
    const-string v11, "split_ar_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_26
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_26 .. :try_end_26} :catch_25

    move-result v10

    goto/16 :goto_1

    .line 6389
    :catch_25
    move-exception v2

    .line 6390
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050207

    .line 6392
    goto/16 :goto_1

    .line 6395
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_18
    :try_start_27
    const-string v11, "split_ur_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_27 .. :try_end_27} :catch_26

    move-result v10

    goto/16 :goto_1

    .line 6396
    :catch_26
    move-exception v2

    .line 6397
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050258

    .line 6399
    goto/16 :goto_1

    .line 6402
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_19
    :try_start_28
    const-string v11, "split_fa_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_28 .. :try_end_28} :catch_27

    move-result v10

    goto/16 :goto_1

    .line 6403
    :catch_27
    move-exception v2

    .line 6404
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050215

    .line 6406
    goto/16 :goto_1

    .line 6409
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1a
    :try_start_29
    const-string v11, "split_he_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_29 .. :try_end_29} :catch_28

    move-result v10

    goto/16 :goto_1

    .line 6410
    :catch_28
    move-exception v2

    .line 6411
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050218

    .line 6413
    goto/16 :goto_1

    .line 6416
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1b
    :try_start_2a
    const-string v11, "split_th_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2a .. :try_end_2a} :catch_29

    move-result v10

    goto/16 :goto_1

    .line 6417
    :catch_29
    move-exception v2

    .line 6418
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050253

    .line 6420
    goto/16 :goto_1

    .line 6423
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1c
    :try_start_2b
    const-string v11, "split_vi_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2b .. :try_end_2b} :catch_2a

    move-result v10

    goto/16 :goto_1

    .line 6424
    :catch_2a
    move-exception v2

    .line 6425
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05025a

    .line 6427
    goto/16 :goto_1

    .line 6430
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1d
    :try_start_2c
    const-string v11, "split_uz_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2c .. :try_end_2c} :catch_2b

    move-result v10

    goto/16 :goto_1

    .line 6431
    :catch_2b
    move-exception v2

    .line 6432
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050259

    .line 6434
    goto/16 :goto_1

    .line 6437
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1e
    :try_start_2d
    const-string v11, "split_az_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2d .. :try_end_2d} :catch_2c

    move-result v10

    goto/16 :goto_1

    .line 6438
    :catch_2c
    move-exception v2

    .line 6439
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050209

    .line 6441
    goto/16 :goto_1

    .line 6444
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1f
    :try_start_2e
    const-string v11, "split_hy_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2e .. :try_end_2e} :catch_2d

    move-result v10

    goto/16 :goto_1

    .line 6445
    :catch_2d
    move-exception v2

    .line 6446
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05021a

    .line 6448
    goto/16 :goto_1

    .line 6451
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_20
    :try_start_2f
    const-string v11, "split_ka_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2f .. :try_end_2f} :catch_2e

    move-result v10

    goto/16 :goto_1

    .line 6452
    :catch_2e
    move-exception v2

    .line 6453
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05021e

    .line 6455
    goto/16 :goto_1

    .line 6458
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_21
    :try_start_30
    const-string v11, "split_is_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_30
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_30 .. :try_end_30} :catch_2f

    move-result v10

    goto/16 :goto_1

    .line 6459
    :catch_2f
    move-exception v2

    .line 6460
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05021b

    .line 6462
    goto/16 :goto_1

    .line 6465
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_22
    const v11, 0x7a68484b

    if-ne p1, v11, :cond_d

    .line 6467
    :try_start_31
    const-string v11, "split_zk_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_31
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_31 .. :try_end_31} :catch_30

    move-result v10

    goto/16 :goto_1

    .line 6468
    :catch_30
    move-exception v2

    .line 6469
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05025c

    .line 6470
    goto/16 :goto_1

    .line 6471
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_d
    const v11, 0x7a685457

    if-ne p1, v11, :cond_e

    .line 6473
    :try_start_32
    const-string v11, "split_zt_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_32
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_32 .. :try_end_32} :catch_31

    move-result v10

    goto/16 :goto_1

    .line 6474
    :catch_31
    move-exception v2

    .line 6475
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05025d

    .line 6476
    goto/16 :goto_1

    .line 6479
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_e
    :try_start_33
    const-string v11, "split_cn_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_33
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_33 .. :try_end_33} :catch_32

    move-result v10

    goto/16 :goto_1

    .line 6480
    :catch_32
    move-exception v2

    .line 6481
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05020d

    .line 6484
    goto/16 :goto_1

    .line 6487
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_23
    :try_start_34
    const-string v11, "split_zk_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_34
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_34 .. :try_end_34} :catch_33

    move-result v10

    goto/16 :goto_1

    .line 6488
    :catch_33
    move-exception v2

    .line 6489
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05025c

    .line 6491
    goto/16 :goto_1

    .line 6494
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_24
    :try_start_35
    const-string v11, "split_zt_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_35
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_35 .. :try_end_35} :catch_34

    move-result v10

    goto/16 :goto_1

    .line 6495
    :catch_34
    move-exception v2

    .line 6496
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05025d

    .line 6498
    goto/16 :goto_1

    .line 6501
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_25
    :try_start_36
    const-string v11, "split_lt_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_36
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_36 .. :try_end_36} :catch_35

    move-result v10

    goto/16 :goto_1

    .line 6502
    :catch_35
    move-exception v2

    .line 6503
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050226

    .line 6505
    goto/16 :goto_1

    .line 6508
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_26
    :try_start_37
    const-string v11, "split_mk_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_37 .. :try_end_37} :catch_36

    move-result v10

    goto/16 :goto_1

    .line 6509
    :catch_36
    move-exception v2

    .line 6510
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050228

    .line 6512
    goto/16 :goto_1

    .line 6515
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_27
    :try_start_38
    const-string v11, "split_et_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_38
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_38 .. :try_end_38} :catch_37

    move-result v10

    goto/16 :goto_1

    .line 6516
    :catch_37
    move-exception v2

    .line 6517
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050214

    .line 6519
    goto/16 :goto_1

    .line 6522
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_28
    :try_start_39
    const-string v11, "split_sq_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_39
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_39 .. :try_end_39} :catch_38

    move-result v10

    goto/16 :goto_1

    .line 6523
    :catch_38
    move-exception v2

    .line 6524
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05024f

    .line 6526
    goto/16 :goto_1

    .line 6529
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_29
    :try_start_3a
    const-string v11, "split_km_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3a .. :try_end_3a} :catch_39

    move-result v10

    goto/16 :goto_1

    .line 6530
    :catch_39
    move-exception v2

    .line 6531
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050220

    .line 6533
    goto/16 :goto_1

    .line 6536
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2a
    :try_start_3b
    const-string v11, "split_lo_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3b .. :try_end_3b} :catch_3a

    move-result v10

    goto/16 :goto_1

    .line 6537
    :catch_3a
    move-exception v2

    .line 6538
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050225

    .line 6540
    goto/16 :goto_1

    .line 6542
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2b
    const v11, 0x6d795a57

    if-ne p1, v11, :cond_2

    .line 6543
    iget-object v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 6545
    :try_start_3c
    const-string v11, "split_zw_left_shift_on"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3c .. :try_end_3c} :catch_3b

    move-result v10

    goto/16 :goto_1

    .line 6546
    :catch_3b
    move-exception v2

    .line 6547
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05025e

    .line 6548
    goto/16 :goto_1

    .line 6551
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_f
    :try_start_3d
    const-string v11, "split_zw_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3d .. :try_end_3d} :catch_3c

    move-result v10

    goto/16 :goto_1

    .line 6552
    :catch_3c
    move-exception v2

    .line 6553
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05025e

    .line 6554
    goto/16 :goto_1

    .line 6561
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2c
    :try_start_3e
    const-string v11, "split_ja_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3e .. :try_end_3e} :catch_3d

    move-result v10

    goto/16 :goto_1

    .line 6562
    :catch_3d
    move-exception v2

    .line 6563
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05021d

    .line 6565
    goto/16 :goto_1

    .line 6568
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2d
    :try_start_3f
    const-string v11, "split_hi_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3f .. :try_end_3f} :catch_3e

    move-result v10

    goto/16 :goto_1

    .line 6569
    :catch_3e
    move-exception v2

    .line 6570
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050219

    .line 6572
    goto/16 :goto_1

    .line 6575
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2e
    :try_start_40
    const-string v11, "split_bn_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_40
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_40 .. :try_end_40} :catch_3f

    move-result v10

    goto/16 :goto_1

    .line 6576
    :catch_3f
    move-exception v2

    .line 6577
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05020c

    .line 6579
    goto/16 :goto_1

    .line 6582
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2f
    :try_start_41
    const-string v11, "split_gu_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_41
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_41 .. :try_end_41} :catch_40

    move-result v10

    goto/16 :goto_1

    .line 6583
    :catch_40
    move-exception v2

    .line 6584
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050217

    .line 6586
    goto/16 :goto_1

    .line 6589
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_30
    :try_start_42
    const-string v11, "split_kn_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_42 .. :try_end_42} :catch_41

    move-result v10

    goto/16 :goto_1

    .line 6590
    :catch_41
    move-exception v2

    .line 6591
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050221

    .line 6593
    goto/16 :goto_1

    .line 6596
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_31
    :try_start_43
    const-string v11, "split_ml_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_43
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_43 .. :try_end_43} :catch_42

    move-result v10

    goto/16 :goto_1

    .line 6597
    :catch_42
    move-exception v2

    .line 6598
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050229

    .line 6600
    goto/16 :goto_1

    .line 6603
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_32
    :try_start_44
    const-string v11, "split_mr_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_44
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_44 .. :try_end_44} :catch_43

    move-result v10

    goto/16 :goto_1

    .line 6604
    :catch_43
    move-exception v2

    .line 6605
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05022b

    .line 6607
    goto/16 :goto_1

    .line 6610
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_33
    :try_start_45
    const-string v11, "split_pa_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_45
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_45 .. :try_end_45} :catch_44

    move-result v10

    goto/16 :goto_1

    .line 6611
    :catch_44
    move-exception v2

    .line 6612
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05024b

    .line 6614
    goto/16 :goto_1

    .line 6617
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_34
    :try_start_46
    const-string v11, "split_ta_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_46
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_46 .. :try_end_46} :catch_45

    move-result v10

    goto/16 :goto_1

    .line 6618
    :catch_45
    move-exception v2

    .line 6619
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050250

    .line 6621
    goto/16 :goto_1

    .line 6624
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_35
    :try_start_47
    const-string v11, "split_te_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_47
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_47 .. :try_end_47} :catch_46

    move-result v10

    goto/16 :goto_1

    .line 6625
    :catch_46
    move-exception v2

    .line 6626
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050251

    .line 6628
    goto/16 :goto_1

    .line 6631
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_36
    :try_start_48
    const-string v11, "split_si_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_48
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_48 .. :try_end_48} :catch_47

    move-result v10

    goto/16 :goto_1

    .line 6632
    :catch_47
    move-exception v2

    .line 6633
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05024d

    .line 6635
    goto/16 :goto_1

    .line 6638
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_37
    :try_start_49
    const-string v11, "split_as_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_49
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_49 .. :try_end_49} :catch_48

    move-result v10

    goto/16 :goto_1

    .line 6639
    :catch_48
    move-exception v2

    .line 6640
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050208

    .line 6642
    goto/16 :goto_1

    .line 6645
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_38
    :try_start_4a
    const-string v11, "split_ne_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4a .. :try_end_4a} :catch_49

    move-result v10

    goto/16 :goto_1

    .line 6646
    :catch_49
    move-exception v2

    .line 6647
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05022d

    .line 6649
    goto/16 :goto_1

    .line 6652
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_39
    :try_start_4b
    const-string v11, "split_or_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4b .. :try_end_4b} :catch_4a

    move-result v10

    goto/16 :goto_1

    .line 6653
    :catch_4a
    move-exception v2

    .line 6654
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05024a

    .line 6656
    goto/16 :goto_1

    .line 6660
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :catch_4b
    move-exception v2

    .line 6661
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050212

    goto/16 :goto_1

    .line 6091
    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_17
        0x61730000 -> :sswitch_37
        0x617a0000 -> :sswitch_1e
        0x62670000 -> :sswitch_14
        0x626e0000 -> :sswitch_2e
        0x63610000 -> :sswitch_0
        0x63730000 -> :sswitch_2
        0x64610000 -> :sswitch_10
        0x64650000 -> :sswitch_9
        0x656c0000 -> :sswitch_15
        0x656e0000 -> :sswitch_0
        0x65730000 -> :sswitch_5
        0x65734553 -> :sswitch_5
        0x65735553 -> :sswitch_5
        0x65740000 -> :sswitch_27
        0x65750000 -> :sswitch_0
        0x66610000 -> :sswitch_19
        0x66690000 -> :sswitch_12
        0x66720000 -> :sswitch_8
        0x66724341 -> :sswitch_8
        0x66724652 -> :sswitch_8
        0x676c0000 -> :sswitch_0
        0x67750000 -> :sswitch_2f
        0x68690000 -> :sswitch_2d
        0x68720000 -> :sswitch_2
        0x68750000 -> :sswitch_2
        0x68790000 -> :sswitch_1f
        0x69640000 -> :sswitch_0
        0x69730000 -> :sswitch_21
        0x69740000 -> :sswitch_6
        0x69770000 -> :sswitch_1a
        0x6a610000 -> :sswitch_2c
        0x6b610000 -> :sswitch_20
        0x6b6b0000 -> :sswitch_a
        0x6b6d0000 -> :sswitch_29
        0x6b6e0000 -> :sswitch_30
        0x6b6f0000 -> :sswitch_7
        0x6b790000 -> :sswitch_d
        0x6c6f0000 -> :sswitch_2a
        0x6c740000 -> :sswitch_25
        0x6c760000 -> :sswitch_16
        0x6d6b0000 -> :sswitch_26
        0x6d6c0000 -> :sswitch_31
        0x6d6e0000 -> :sswitch_c
        0x6d720000 -> :sswitch_32
        0x6d730000 -> :sswitch_0
        0x6d790000 -> :sswitch_2b
        0x6e620000 -> :sswitch_11
        0x6e650000 -> :sswitch_38
        0x6e6c0000 -> :sswitch_4
        0x6f720000 -> :sswitch_39
        0x70610000 -> :sswitch_33
        0x706c0000 -> :sswitch_0
        0x70740000 -> :sswitch_0
        0x726f0000 -> :sswitch_0
        0x72750000 -> :sswitch_b
        0x73690000 -> :sswitch_36
        0x736b0000 -> :sswitch_0
        0x736c0000 -> :sswitch_1
        0x73710000 -> :sswitch_28
        0x73720000 -> :sswitch_2
        0x73760000 -> :sswitch_12
        0x74610000 -> :sswitch_34
        0x74650000 -> :sswitch_35
        0x74670000 -> :sswitch_e
        0x74680000 -> :sswitch_1b
        0x746b0000 -> :sswitch_f
        0x74720000 -> :sswitch_3
        0x756b0000 -> :sswitch_13
        0x75720000 -> :sswitch_18
        0x757a0000 -> :sswitch_1d
        0x76690000 -> :sswitch_1c
        0x7a680000 -> :sswitch_22
        0x7a68434e -> :sswitch_22
        0x7a68484b -> :sswitch_23
        0x7a685457 -> :sswitch_24
    .end sparse-switch

    .line 6128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 6261
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    .line 6351
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method private getSplitNumberPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 11
    .param p1, "bIsLeftSplitKeyboard"    # Z

    .prologue
    .line 7902
    const-string v8, "SamsungIME"

    const-string v9, "getSplitNumberPopupKeyboard"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7904
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 7905
    const/4 v7, 0x0

    .line 7906
    .local v7, "xmlId":I
    const/4 v5, 0x0

    .line 7907
    .local v5, "modeId":I
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v6

    .line 7908
    .local v6, "privateImeOptionsInputType":I
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "INPUT_LANGUAGE"

    const v10, 0x656e4742

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    .line 7909
    .local v4, "language":I
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isSplitOneHandKeypadRightSet()Z

    move-result v3

    .line 7910
    .local v3, "isRightSet":Z
    if-eqz v3, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez v3, :cond_5

    if-eqz p1, :cond_5

    :cond_1
    const/4 v2, 0x1

    .line 7913
    .local v2, "isNumberKeypad":Z
    :goto_0
    if-nez v2, :cond_2

    .line 7914
    :try_start_0
    const-string v8, "split_number_arrow"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 7920
    :cond_2
    const/16 v8, 0xa

    if-ne v6, v8, :cond_6

    .line 7922
    if-eqz v2, :cond_3

    .line 7923
    :try_start_1
    const-string v8, "split_month_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 8043
    :cond_3
    :goto_1
    iget-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v8, :cond_4

    iget v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v8, v7, :cond_4

    iget v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v8, v5, :cond_4

    iget-boolean v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v9

    if-eq v8, v9, :cond_1a

    .line 8045
    :cond_4
    if-eqz v5, :cond_19

    .line 8046
    new-instance v8, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v7, v5}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 8051
    :goto_2
    iget-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-direct {p0, v8, v7, v5}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    .line 8056
    :goto_3
    iget-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    :goto_4
    return-object v8

    .line 7910
    .end local v2    # "isNumberKeypad":Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    .line 7916
    .restart local v2    # "isNumberKeypad":Z
    :catch_0
    move-exception v0

    .line 7917
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getNumberPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v8

    goto :goto_4

    .line 7925
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v1

    .line 7926
    .local v1, "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f0501c7

    .line 7927
    goto :goto_1

    .line 7928
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_6
    const/16 v8, 0x9

    if-eq v6, v8, :cond_7

    const/16 v8, 0xe

    if-ne v6, v8, :cond_8

    .line 7931
    :cond_7
    if-eqz v2, :cond_3

    .line 7932
    :try_start_2
    const-string v8, "split_yeardatetime_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    goto :goto_1

    .line 7934
    :catch_2
    move-exception v1

    .line 7935
    .restart local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f0501d6

    .line 7936
    goto :goto_1

    .line 7937
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 7939
    if-eqz v2, :cond_3

    .line 7940
    :try_start_3
    const-string v8, "split_phone_number_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v7

    goto :goto_1

    .line 7942
    :catch_3
    move-exception v1

    .line 7943
    .restart local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f0501d6

    .line 7944
    goto :goto_1

    .line 7945
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_9
    const/4 v8, 0x1

    if-ne v6, v8, :cond_a

    .line 7947
    if-eqz v2, :cond_3

    .line 7948
    :try_start_4
    const-string v8, "split_number_decimal_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v7

    goto :goto_1

    .line 7950
    :catch_4
    move-exception v1

    .line 7951
    .restart local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f0501ce

    .line 7952
    goto :goto_1

    .line 7953
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_a
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDecimalNumberInputType()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 7955
    if-eqz v2, :cond_3

    .line 7956
    :try_start_5
    const-string v8, "split_number_decimal_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v7

    goto :goto_1

    .line 7958
    :catch_5
    move-exception v1

    .line 7959
    .restart local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f0501ce

    .line 7960
    goto/16 :goto_1

    .line 7961
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_b
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberOnlyInputType()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 7963
    if-eqz v2, :cond_3

    .line 7964
    :try_start_6
    const-string v8, "split_number_only_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v7

    goto/16 :goto_1

    .line 7966
    :catch_6
    move-exception v1

    .line 7967
    .restart local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f0501d2

    .line 7968
    goto/16 :goto_1

    .line 7969
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_c
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isSignedNumberInputType()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 7971
    if-eqz v2, :cond_3

    .line 7972
    :try_start_7
    const-string v8, "split_number_signed_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v7

    goto/16 :goto_1

    .line 7974
    :catch_7
    move-exception v1

    .line 7975
    .restart local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f0501d4

    .line 7976
    goto/16 :goto_1

    .line 7977
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_d
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isSignedDecimalNumberInputType()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 7979
    if-eqz v2, :cond_3

    .line 7980
    :try_start_8
    const-string v8, "split_number_signed_decimal_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v7

    goto/16 :goto_1

    .line 7982
    :catch_8
    move-exception v1

    .line 7983
    .restart local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f0501d5

    .line 7984
    goto/16 :goto_1

    .line 7985
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_e
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isTimeInputType()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 7987
    if-eqz v2, :cond_3

    .line 7988
    :try_start_9
    const-string v8, "split_time_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_9

    move-result v7

    goto/16 :goto_1

    .line 7990
    :catch_9
    move-exception v1

    .line 7991
    .restart local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f0501ee

    .line 7992
    goto/16 :goto_1

    .line 7993
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_f
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDateInputType()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 7995
    if-eqz v2, :cond_3

    .line 7996
    :try_start_a
    const-string v8, "split_date_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_a

    move-result v7

    goto/16 :goto_1

    .line 7998
    :catch_a
    move-exception v1

    .line 7999
    .restart local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f0501a0

    .line 8000
    goto/16 :goto_1

    .line 8001
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_10
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDateTimeInputType()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 8003
    if-eqz v2, :cond_3

    .line 8004
    :try_start_b
    const-string v8, "split_datetime_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_b

    move-result v7

    goto/16 :goto_1

    .line 8006
    :catch_b
    move-exception v1

    .line 8007
    .restart local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f0501a1

    .line 8008
    goto/16 :goto_1

    .line 8010
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_11
    if-eqz p1, :cond_15

    .line 8012
    const/high16 v8, 0x61720000

    if-ne v4, v8, :cond_12

    .line 8013
    :try_start_c
    const-string v8, "split_number_symbols_left_arabic"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_c

    move-result v7

    .line 8039
    :goto_5
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "SYMBOLS_PAGE"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v5

    goto/16 :goto_1

    .line 8014
    :cond_12
    const/high16 v8, 0x66610000

    if-ne v4, v8, :cond_13

    .line 8015
    :try_start_d
    const-string v8, "split_number_symbols_left_farsi"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    .line 8016
    :cond_13
    const/high16 v8, 0x75720000

    if-ne v4, v8, :cond_14

    .line 8017
    const-string v8, "split_number_symbols_left_urdu"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    .line 8019
    :cond_14
    const-string v8, "split_number_symbols_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_c

    move-result v7

    goto :goto_5

    .line 8021
    :catch_c
    move-exception v1

    .line 8022
    .restart local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f05022e

    .line 8023
    goto :goto_5

    .line 8026
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_15
    const/high16 v8, 0x61720000

    if-ne v4, v8, :cond_16

    .line 8027
    :try_start_e
    const-string v8, "split_number_symbols_right_arabic"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    .line 8028
    :cond_16
    const/high16 v8, 0x66610000

    if-ne v4, v8, :cond_17

    .line 8029
    const-string v8, "split_number_symbols_right_farsi"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    .line 8030
    :cond_17
    const/high16 v8, 0x75720000

    if-ne v4, v8, :cond_18

    .line 8031
    const-string v8, "split_number_symbols_right_urdu"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    .line 8033
    :cond_18
    const-string v8, "split_number_symbols_right"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_d

    move-result v7

    goto :goto_5

    .line 8035
    :catch_d
    move-exception v1

    .line 8036
    .restart local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v7, 0x7f05022e

    goto :goto_5

    .line 8048
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_19
    new-instance v8, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v7}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_2

    .line 8053
    :cond_1a
    iget-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iput-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_3
.end method

.method private getSplitRightKeyboardXmlId(I)I
    .locals 14
    .param p1, "language"    # I

    .prologue
    .line 5474
    const/high16 v11, -0x10000

    and-int v6, p1, v11

    .line 5477
    .local v6, "langCode":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    .line 5478
    .local v8, "sLocal":Ljava/lang/String;
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 5479
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputCountryCode()Ljava/lang/String;

    move-result-object v4

    .line 5480
    .local v4, "inputLanguageLocal":Ljava/lang/String;
    const-string v11, ""

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "CH"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const v11, 0x66724652

    if-eq p1, v11, :cond_1

    .line 5482
    :cond_0
    move-object v8, v4

    .line 5485
    .end local v4    # "inputLanguageLocal":Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 5487
    .local v7, "locale":Ljava/lang/String;
    const/4 v10, 0x0

    .line 5489
    .local v10, "xmlId":I
    :try_start_0
    const-string v11, "split_en_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 5494
    :goto_0
    sparse-switch v6, :sswitch_data_0

    .line 6060
    :try_start_1
    const-string v11, "split_en_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_4b

    move-result v10

    .line 6067
    :cond_2
    :goto_1
    return v10

    .line 5490
    :catch_0
    move-exception v2

    .line 5491
    .local v2, "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050212

    goto :goto_0

    .line 5504
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_0
    :try_start_2
    const-string v11, "split_en_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v10

    goto :goto_1

    .line 5505
    :catch_1
    move-exception v2

    .line 5506
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050212

    .line 5508
    goto :goto_1

    .line 5511
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1
    :try_start_3
    const-string v11, "split_sl_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v10

    goto :goto_1

    .line 5513
    :catch_2
    move-exception v11

    .line 5521
    :sswitch_2
    :try_start_4
    const-string v11, "split_qwertz_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v10

    goto :goto_1

    .line 5522
    :catch_3
    move-exception v2

    .line 5523
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050260

    .line 5525
    goto :goto_1

    .line 5528
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_3
    :try_start_5
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v9

    .line 5529
    .local v9, "turkishKeyboardType":I
    packed-switch v9, :pswitch_data_0

    .line 5537
    const-string v11, "split_en_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_1

    .line 5531
    :pswitch_0
    const-string v11, "split_tr_qwerty_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    .line 5532
    goto :goto_1

    .line 5534
    :pswitch_1
    const-string v11, "split_tr_f_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v10

    .line 5535
    goto :goto_1

    .line 5540
    .end local v9    # "turkishKeyboardType":I
    :catch_4
    move-exception v2

    .line 5541
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050212

    .line 5543
    goto :goto_1

    .line 5545
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_4
    const-string v11, "BE"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 5547
    :try_start_6
    const-string v11, "split_azerty_fr_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    move-result v10

    goto :goto_1

    .line 5548
    :catch_5
    move-exception v2

    .line 5549
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const/high16 v10, 0x7f050000

    .line 5550
    goto :goto_1

    .line 5553
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    :try_start_7
    const-string v11, "split_en_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    move-result v10

    goto :goto_1

    .line 5554
    :catch_6
    move-exception v2

    .line 5555
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050212

    .line 5558
    goto :goto_1

    .line 5563
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_5
    :try_start_8
    const-string v11, "split_es_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_7

    move-result v10

    goto :goto_1

    .line 5564
    :catch_7
    move-exception v2

    .line 5565
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050213

    .line 5567
    goto :goto_1

    .line 5569
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_6
    const-string v11, "CH"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 5571
    :try_start_9
    const-string v11, "split_qwertz_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_8

    move-result v10

    goto/16 :goto_1

    .line 5572
    :catch_8
    move-exception v2

    .line 5573
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050260

    .line 5574
    goto/16 :goto_1

    .line 5577
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_4
    :try_start_a
    const-string v11, "split_it_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_9

    move-result v10

    goto/16 :goto_1

    .line 5578
    :catch_9
    move-exception v2

    .line 5579
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05021c

    .line 5582
    goto/16 :goto_1

    .line 5584
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_7
    iget-boolean v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsKorMode:Z

    if-eqz v11, :cond_8

    .line 5585
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v5

    .line 5586
    .local v5, "keypadType":I
    const/4 v11, 0x1

    if-ne v5, v11, :cond_5

    .line 5588
    :try_start_b
    const-string v11, "split_kr_cji_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_a

    move-result v10

    goto/16 :goto_1

    .line 5589
    :catch_a
    move-exception v2

    .line 5590
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050222

    .line 5591
    goto/16 :goto_1

    .line 5592
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_5
    const/4 v11, 0x2

    if-ne v5, v11, :cond_6

    .line 5594
    :try_start_c
    const-string v11, "split_kr_cji_turbo_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_b

    move-result v10

    goto/16 :goto_1

    .line 5595
    :catch_b
    move-exception v2

    .line 5596
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050222

    .line 5597
    goto/16 :goto_1

    .line 5598
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_6
    if-nez v5, :cond_2

    .line 5599
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 5601
    :try_start_d
    const-string v11, "split_kr_to_en_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_c

    move-result v10

    goto/16 :goto_1

    .line 5602
    :catch_c
    move-exception v2

    .line 5603
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050223

    .line 5604
    goto/16 :goto_1

    .line 5607
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_7
    :try_start_e
    const-string v11, "split_kr_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_d

    move-result v10

    goto/16 :goto_1

    .line 5608
    :catch_d
    move-exception v2

    .line 5609
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050222

    goto/16 :goto_1

    .line 5615
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    .end local v5    # "keypadType":I
    :cond_8
    :try_start_f
    const-string v11, "split_kr_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_f} :catch_e

    move-result v10

    goto/16 :goto_1

    .line 5616
    :catch_e
    move-exception v2

    .line 5617
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050222

    .line 5620
    goto/16 :goto_1

    .line 5624
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_8
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_a

    .line 5625
    const v11, 0x66724341

    if-ne p1, v11, :cond_9

    .line 5627
    :try_start_10
    const-string v11, "split_en_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_10} :catch_f

    move-result v10

    goto/16 :goto_1

    .line 5628
    :catch_f
    move-exception v2

    .line 5629
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050212

    .line 5630
    goto/16 :goto_1

    .line 5633
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_9
    :try_start_11
    const-string v11, "split_azerty_fr_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_11} :catch_10

    move-result v10

    goto/16 :goto_1

    .line 5634
    :catch_10
    move-exception v2

    .line 5635
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const/high16 v10, 0x7f050000

    .line 5636
    goto/16 :goto_1

    .line 5639
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_a
    const-string v11, "CA"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 5641
    :try_start_12
    const-string v11, "split_en_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_12} :catch_11

    move-result v10

    goto/16 :goto_1

    .line 5642
    :catch_11
    move-exception v2

    .line 5643
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050212

    .line 5644
    goto/16 :goto_1

    .line 5645
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_b
    const-string v11, "CH"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 5647
    :try_start_13
    const-string v11, "split_qwertz_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_13} :catch_12

    move-result v10

    goto/16 :goto_1

    .line 5648
    :catch_12
    move-exception v2

    .line 5649
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050260

    .line 5650
    goto/16 :goto_1

    .line 5653
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_c
    :try_start_14
    const-string v11, "split_azerty_fr_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14 .. :try_end_14} :catch_13

    move-result v10

    goto/16 :goto_1

    .line 5654
    :catch_13
    move-exception v2

    .line 5655
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const/high16 v10, 0x7f050000

    .line 5659
    goto/16 :goto_1

    .line 5661
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_9
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "SETTINGS_GERMAN_KEYBOARD_TYPE"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    .line 5662
    .local v3, "germanKeyboardType":I
    packed-switch v3, :pswitch_data_1

    .line 5672
    :try_start_15
    const-string v11, "split_qwertz_de_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_15} :catch_15

    move-result v10

    goto/16 :goto_1

    .line 5665
    :pswitch_2
    :try_start_16
    const-string v11, "split_qwertz_de_plus_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_16} :catch_14

    move-result v10

    goto/16 :goto_1

    .line 5666
    :catch_14
    move-exception v2

    .line 5667
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050261

    .line 5669
    goto/16 :goto_1

    .line 5673
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :catch_15
    move-exception v2

    .line 5674
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050261

    .line 5676
    goto/16 :goto_1

    .line 5681
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    .end local v3    # "germanKeyboardType":I
    :sswitch_a
    :try_start_17
    const-string v11, "split_kk_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_17} :catch_16

    move-result v10

    goto/16 :goto_1

    .line 5683
    :catch_16
    move-exception v11

    .line 5688
    :sswitch_b
    :try_start_18
    const-string v11, "split_ru_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_18 .. :try_end_18} :catch_17

    move-result v10

    goto/16 :goto_1

    .line 5689
    :catch_17
    move-exception v2

    .line 5690
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05024c

    .line 5692
    goto/16 :goto_1

    .line 5695
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_c
    :try_start_19
    const-string v11, "split_mn_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_19 .. :try_end_19} :catch_18

    move-result v10

    goto/16 :goto_1

    .line 5696
    :catch_18
    move-exception v2

    .line 5697
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05022a

    .line 5699
    goto/16 :goto_1

    .line 5702
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_d
    :try_start_1a
    const-string v11, "split_ky_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1a .. :try_end_1a} :catch_19

    move-result v10

    goto/16 :goto_1

    .line 5703
    :catch_19
    move-exception v2

    .line 5704
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050224

    .line 5706
    goto/16 :goto_1

    .line 5709
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_e
    :try_start_1b
    const-string v11, "split_tg_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1b .. :try_end_1b} :catch_1a

    move-result v10

    goto/16 :goto_1

    .line 5710
    :catch_1a
    move-exception v2

    .line 5711
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050252

    .line 5713
    goto/16 :goto_1

    .line 5716
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_f
    :try_start_1c
    const-string v11, "split_tk_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1c .. :try_end_1c} :catch_1b

    move-result v10

    goto/16 :goto_1

    .line 5717
    :catch_1b
    move-exception v2

    .line 5718
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050254

    .line 5720
    goto/16 :goto_1

    .line 5723
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_10
    :try_start_1d
    const-string v11, "split_da_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1d .. :try_end_1d} :catch_1c

    move-result v10

    goto/16 :goto_1

    .line 5724
    :catch_1c
    move-exception v2

    .line 5725
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05020f

    .line 5727
    goto/16 :goto_1

    .line 5730
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_11
    :try_start_1e
    const-string v11, "split_nb_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1e .. :try_end_1e} :catch_1d

    move-result v10

    goto/16 :goto_1

    .line 5731
    :catch_1d
    move-exception v2

    .line 5732
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05022c

    .line 5734
    goto/16 :goto_1

    .line 5738
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_12
    :try_start_1f
    const-string v11, "split_fi_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1f .. :try_end_1f} :catch_1e

    move-result v10

    goto/16 :goto_1

    .line 5739
    :catch_1e
    move-exception v2

    .line 5740
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050216

    .line 5742
    goto/16 :goto_1

    .line 5745
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_13
    :try_start_20
    const-string v11, "split_uk_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_20 .. :try_end_20} :catch_1f

    move-result v10

    goto/16 :goto_1

    .line 5746
    :catch_1f
    move-exception v2

    .line 5747
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050257

    .line 5749
    goto/16 :goto_1

    .line 5751
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_14
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "SETTINGS_BULGARIAN_KEYBOARD_TYPE"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    .line 5752
    .local v0, "bulgarianKeyboardType":I
    packed-switch v0, :pswitch_data_2

    .line 5766
    :try_start_21
    const-string v11, "split_bg_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_21
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_21 .. :try_end_21} :catch_22

    move-result v10

    goto/16 :goto_1

    .line 5755
    :pswitch_3
    :try_start_22
    const-string v11, "split_bg_phonetic_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_22
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_22 .. :try_end_22} :catch_20

    move-result v10

    goto/16 :goto_1

    .line 5756
    :catch_20
    move-exception v2

    .line 5758
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :try_start_23
    const-string v11, "split_bg_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_23 .. :try_end_23} :catch_21

    move-result v10

    goto/16 :goto_1

    .line 5759
    :catch_21
    move-exception v1

    .line 5760
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05020a

    goto/16 :goto_1

    .line 5767
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :catch_22
    move-exception v2

    .line 5768
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05020a

    .line 5770
    goto/16 :goto_1

    .line 5775
    .end local v0    # "bulgarianKeyboardType":I
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_15
    :try_start_24
    const-string v11, "split_el_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_24 .. :try_end_24} :catch_23

    move-result v10

    goto/16 :goto_1

    .line 5776
    :catch_23
    move-exception v2

    .line 5777
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050210

    .line 5779
    goto/16 :goto_1

    .line 5782
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_16
    :try_start_25
    const-string v11, "split_lv_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_25 .. :try_end_25} :catch_24

    move-result v10

    goto/16 :goto_1

    .line 5783
    :catch_24
    move-exception v2

    .line 5784
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050227

    .line 5786
    goto/16 :goto_1

    .line 5789
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_17
    :try_start_26
    const-string v11, "split_ar_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_26
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_26 .. :try_end_26} :catch_25

    move-result v10

    goto/16 :goto_1

    .line 5790
    :catch_25
    move-exception v2

    .line 5791
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050207

    .line 5793
    goto/16 :goto_1

    .line 5796
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_18
    :try_start_27
    const-string v11, "split_ur_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_27 .. :try_end_27} :catch_26

    move-result v10

    goto/16 :goto_1

    .line 5797
    :catch_26
    move-exception v2

    .line 5798
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050258

    .line 5800
    goto/16 :goto_1

    .line 5803
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_19
    :try_start_28
    const-string v11, "split_fa_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_28 .. :try_end_28} :catch_27

    move-result v10

    goto/16 :goto_1

    .line 5804
    :catch_27
    move-exception v2

    .line 5805
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050215

    .line 5807
    goto/16 :goto_1

    .line 5810
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1a
    :try_start_29
    const-string v11, "split_he_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_29 .. :try_end_29} :catch_28

    move-result v10

    goto/16 :goto_1

    .line 5811
    :catch_28
    move-exception v2

    .line 5812
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050218

    .line 5814
    goto/16 :goto_1

    .line 5817
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1b
    :try_start_2a
    const-string v11, "split_th_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2a .. :try_end_2a} :catch_29

    move-result v10

    goto/16 :goto_1

    .line 5818
    :catch_29
    move-exception v2

    .line 5819
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050253

    .line 5821
    goto/16 :goto_1

    .line 5824
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1c
    :try_start_2b
    const-string v11, "split_vi_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2b .. :try_end_2b} :catch_2a

    move-result v10

    goto/16 :goto_1

    .line 5825
    :catch_2a
    move-exception v2

    .line 5826
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05025a

    .line 5828
    goto/16 :goto_1

    .line 5831
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1d
    :try_start_2c
    const-string v11, "split_uz_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2c .. :try_end_2c} :catch_2b

    move-result v10

    goto/16 :goto_1

    .line 5832
    :catch_2b
    move-exception v2

    .line 5833
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050259

    .line 5835
    goto/16 :goto_1

    .line 5838
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1e
    :try_start_2d
    const-string v11, "split_az_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2d .. :try_end_2d} :catch_2c

    move-result v10

    goto/16 :goto_1

    .line 5839
    :catch_2c
    move-exception v2

    .line 5840
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050209

    .line 5842
    goto/16 :goto_1

    .line 5845
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_1f
    :try_start_2e
    const-string v11, "split_hy_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2e .. :try_end_2e} :catch_2d

    move-result v10

    goto/16 :goto_1

    .line 5846
    :catch_2d
    move-exception v2

    .line 5847
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05021a

    .line 5849
    goto/16 :goto_1

    .line 5852
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_20
    :try_start_2f
    const-string v11, "split_ka_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2f .. :try_end_2f} :catch_2e

    move-result v10

    goto/16 :goto_1

    .line 5853
    :catch_2e
    move-exception v2

    .line 5854
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05021e

    .line 5856
    goto/16 :goto_1

    .line 5859
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_21
    const v11, 0x7a68484b

    if-ne p1, v11, :cond_d

    .line 5861
    :try_start_30
    const-string v11, "split_zk_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_30
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_30 .. :try_end_30} :catch_2f

    move-result v10

    goto/16 :goto_1

    .line 5862
    :catch_2f
    move-exception v2

    .line 5863
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05025c

    .line 5864
    goto/16 :goto_1

    .line 5865
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_d
    const v11, 0x7a685457

    if-ne p1, v11, :cond_e

    .line 5867
    :try_start_31
    const-string v11, "split_zt_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_31
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_31 .. :try_end_31} :catch_30

    move-result v10

    goto/16 :goto_1

    .line 5868
    :catch_30
    move-exception v2

    .line 5869
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05025d

    .line 5870
    goto/16 :goto_1

    .line 5873
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_e
    :try_start_32
    const-string v11, "split_cn_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_32
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_32 .. :try_end_32} :catch_31

    move-result v10

    goto/16 :goto_1

    .line 5874
    :catch_31
    move-exception v2

    .line 5875
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05020d

    .line 5878
    goto/16 :goto_1

    .line 5881
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_22
    :try_start_33
    const-string v11, "split_zk_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_33
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_33 .. :try_end_33} :catch_32

    move-result v10

    goto/16 :goto_1

    .line 5882
    :catch_32
    move-exception v2

    .line 5883
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05025c

    .line 5885
    goto/16 :goto_1

    .line 5888
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_23
    :try_start_34
    const-string v11, "split_zt_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_34
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_34 .. :try_end_34} :catch_33

    move-result v10

    goto/16 :goto_1

    .line 5889
    :catch_33
    move-exception v2

    .line 5890
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05025d

    .line 5892
    goto/16 :goto_1

    .line 5895
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_24
    :try_start_35
    const-string v11, "split_lt_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_35
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_35 .. :try_end_35} :catch_34

    move-result v10

    goto/16 :goto_1

    .line 5896
    :catch_34
    move-exception v2

    .line 5897
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050226

    .line 5899
    goto/16 :goto_1

    .line 5902
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_25
    :try_start_36
    const-string v11, "split_is_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_36
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_36 .. :try_end_36} :catch_35

    move-result v10

    goto/16 :goto_1

    .line 5903
    :catch_35
    move-exception v2

    .line 5904
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05021b

    .line 5906
    goto/16 :goto_1

    .line 5909
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_26
    :try_start_37
    const-string v11, "split_mk_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_37 .. :try_end_37} :catch_36

    move-result v10

    goto/16 :goto_1

    .line 5910
    :catch_36
    move-exception v2

    .line 5911
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050228

    .line 5913
    goto/16 :goto_1

    .line 5916
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_27
    :try_start_38
    const-string v11, "split_et_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_38
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_38 .. :try_end_38} :catch_37

    move-result v10

    goto/16 :goto_1

    .line 5917
    :catch_37
    move-exception v2

    .line 5918
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050214

    .line 5920
    goto/16 :goto_1

    .line 5923
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_28
    :try_start_39
    const-string v11, "split_sq_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_39
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_39 .. :try_end_39} :catch_38

    move-result v10

    goto/16 :goto_1

    .line 5924
    :catch_38
    move-exception v2

    .line 5925
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05024f

    .line 5927
    goto/16 :goto_1

    .line 5930
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_29
    :try_start_3a
    const-string v11, "split_km_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3a .. :try_end_3a} :catch_39

    move-result v10

    goto/16 :goto_1

    .line 5931
    :catch_39
    move-exception v2

    .line 5932
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050220

    .line 5934
    goto/16 :goto_1

    .line 5937
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2a
    :try_start_3b
    const-string v11, "split_lo_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3b .. :try_end_3b} :catch_3a

    move-result v10

    goto/16 :goto_1

    .line 5938
    :catch_3a
    move-exception v2

    .line 5939
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050225

    .line 5941
    goto/16 :goto_1

    .line 5943
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2b
    const v11, 0x6d795a57

    if-ne p1, v11, :cond_2

    .line 5944
    iget-object v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 5946
    :try_start_3c
    const-string v11, "split_zw_right_shift_on"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3c .. :try_end_3c} :catch_3b

    move-result v10

    goto/16 :goto_1

    .line 5947
    :catch_3b
    move-exception v2

    .line 5948
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05025e

    .line 5949
    goto/16 :goto_1

    .line 5952
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_f
    :try_start_3d
    const-string v11, "split_zw_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3d .. :try_end_3d} :catch_3c

    move-result v10

    goto/16 :goto_1

    .line 5953
    :catch_3c
    move-exception v2

    .line 5954
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05025e

    .line 5955
    goto/16 :goto_1

    .line 5962
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2c
    :try_start_3e
    const-string v11, "split_ja_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3e .. :try_end_3e} :catch_3d

    move-result v10

    goto/16 :goto_1

    .line 5963
    :catch_3d
    move-exception v2

    .line 5964
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05021d

    .line 5966
    goto/16 :goto_1

    .line 5969
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2d
    :try_start_3f
    const-string v11, "split_hi_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3f .. :try_end_3f} :catch_3e

    move-result v10

    goto/16 :goto_1

    .line 5970
    :catch_3e
    move-exception v2

    .line 5971
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050219

    .line 5973
    goto/16 :goto_1

    .line 5976
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2e
    :try_start_40
    const-string v11, "split_bn_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_40
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_40 .. :try_end_40} :catch_3f

    move-result v10

    goto/16 :goto_1

    .line 5977
    :catch_3f
    move-exception v2

    .line 5978
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05020c

    .line 5980
    goto/16 :goto_1

    .line 5983
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_2f
    :try_start_41
    const-string v11, "split_gu_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_41
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_41 .. :try_end_41} :catch_40

    move-result v10

    goto/16 :goto_1

    .line 5984
    :catch_40
    move-exception v2

    .line 5985
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050217

    .line 5987
    goto/16 :goto_1

    .line 5990
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_30
    :try_start_42
    const-string v11, "split_kn_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_42 .. :try_end_42} :catch_41

    move-result v10

    goto/16 :goto_1

    .line 5991
    :catch_41
    move-exception v2

    .line 5992
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050221

    .line 5994
    goto/16 :goto_1

    .line 5997
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_31
    :try_start_43
    const-string v11, "split_mr_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_43
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_43 .. :try_end_43} :catch_42

    move-result v10

    goto/16 :goto_1

    .line 5998
    :catch_42
    move-exception v2

    .line 5999
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05022b

    .line 6001
    goto/16 :goto_1

    .line 6004
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_32
    :try_start_44
    const-string v11, "split_ml_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_44
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_44 .. :try_end_44} :catch_43

    move-result v10

    goto/16 :goto_1

    .line 6005
    :catch_43
    move-exception v2

    .line 6006
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050229

    .line 6008
    goto/16 :goto_1

    .line 6011
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_33
    :try_start_45
    const-string v11, "split_pa_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_45
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_45 .. :try_end_45} :catch_44

    move-result v10

    goto/16 :goto_1

    .line 6012
    :catch_44
    move-exception v2

    .line 6013
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05024b

    .line 6015
    goto/16 :goto_1

    .line 6018
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_34
    :try_start_46
    const-string v11, "split_ta_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_46
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_46 .. :try_end_46} :catch_45

    move-result v10

    goto/16 :goto_1

    .line 6019
    :catch_45
    move-exception v2

    .line 6020
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050250

    .line 6022
    goto/16 :goto_1

    .line 6025
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_35
    :try_start_47
    const-string v11, "split_te_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_47
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_47 .. :try_end_47} :catch_46

    move-result v10

    goto/16 :goto_1

    .line 6026
    :catch_46
    move-exception v2

    .line 6027
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050251

    .line 6029
    goto/16 :goto_1

    .line 6032
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_36
    :try_start_48
    const-string v11, "split_si_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_48
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_48 .. :try_end_48} :catch_47

    move-result v10

    goto/16 :goto_1

    .line 6033
    :catch_47
    move-exception v2

    .line 6034
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05024d

    .line 6036
    goto/16 :goto_1

    .line 6039
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_37
    :try_start_49
    const-string v11, "split_as_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_49
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_49 .. :try_end_49} :catch_48

    move-result v10

    goto/16 :goto_1

    .line 6040
    :catch_48
    move-exception v2

    .line 6041
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050208

    .line 6043
    goto/16 :goto_1

    .line 6046
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_38
    :try_start_4a
    const-string v11, "split_ne_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4a .. :try_end_4a} :catch_49

    move-result v10

    goto/16 :goto_1

    .line 6047
    :catch_49
    move-exception v2

    .line 6048
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05022d

    .line 6050
    goto/16 :goto_1

    .line 6053
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :sswitch_39
    :try_start_4b
    const-string v11, "split_or_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4b .. :try_end_4b} :catch_4a

    move-result v10

    goto/16 :goto_1

    .line 6054
    :catch_4a
    move-exception v2

    .line 6055
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05024a

    .line 6057
    goto/16 :goto_1

    .line 6061
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :catch_4b
    move-exception v2

    .line 6062
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f050212

    goto/16 :goto_1

    .line 5494
    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_17
        0x61730000 -> :sswitch_37
        0x617a0000 -> :sswitch_1e
        0x62670000 -> :sswitch_14
        0x626e0000 -> :sswitch_2e
        0x63610000 -> :sswitch_0
        0x63730000 -> :sswitch_2
        0x64610000 -> :sswitch_10
        0x64650000 -> :sswitch_9
        0x656c0000 -> :sswitch_15
        0x656e0000 -> :sswitch_0
        0x65730000 -> :sswitch_5
        0x65734553 -> :sswitch_5
        0x65735553 -> :sswitch_5
        0x65740000 -> :sswitch_27
        0x65750000 -> :sswitch_0
        0x66610000 -> :sswitch_19
        0x66690000 -> :sswitch_12
        0x66720000 -> :sswitch_8
        0x66724341 -> :sswitch_8
        0x66724652 -> :sswitch_8
        0x676c0000 -> :sswitch_0
        0x67750000 -> :sswitch_2f
        0x68690000 -> :sswitch_2d
        0x68720000 -> :sswitch_2
        0x68750000 -> :sswitch_2
        0x68790000 -> :sswitch_1f
        0x69730000 -> :sswitch_25
        0x69740000 -> :sswitch_6
        0x69770000 -> :sswitch_1a
        0x6a610000 -> :sswitch_2c
        0x6b610000 -> :sswitch_20
        0x6b6b0000 -> :sswitch_a
        0x6b6d0000 -> :sswitch_29
        0x6b6e0000 -> :sswitch_30
        0x6b6f0000 -> :sswitch_7
        0x6b790000 -> :sswitch_d
        0x6c6f0000 -> :sswitch_2a
        0x6c740000 -> :sswitch_24
        0x6c760000 -> :sswitch_16
        0x6d6b0000 -> :sswitch_26
        0x6d6c0000 -> :sswitch_32
        0x6d6e0000 -> :sswitch_c
        0x6d720000 -> :sswitch_31
        0x6d790000 -> :sswitch_2b
        0x6e620000 -> :sswitch_11
        0x6e650000 -> :sswitch_38
        0x6e6c0000 -> :sswitch_4
        0x6f720000 -> :sswitch_39
        0x70610000 -> :sswitch_33
        0x706c0000 -> :sswitch_0
        0x70740000 -> :sswitch_0
        0x726f0000 -> :sswitch_0
        0x72750000 -> :sswitch_b
        0x73690000 -> :sswitch_36
        0x736b0000 -> :sswitch_0
        0x736c0000 -> :sswitch_1
        0x73710000 -> :sswitch_28
        0x73720000 -> :sswitch_2
        0x73760000 -> :sswitch_12
        0x74610000 -> :sswitch_34
        0x74650000 -> :sswitch_35
        0x74670000 -> :sswitch_e
        0x74680000 -> :sswitch_1b
        0x746b0000 -> :sswitch_f
        0x74720000 -> :sswitch_3
        0x756b0000 -> :sswitch_13
        0x75720000 -> :sswitch_18
        0x757a0000 -> :sswitch_1d
        0x76690000 -> :sswitch_1c
        0x7a680000 -> :sswitch_21
        0x7a68434e -> :sswitch_21
        0x7a68484b -> :sswitch_22
        0x7a685457 -> :sswitch_23
    .end sparse-switch

    .line 5529
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 5662
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    .line 5752
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method private getSymbolKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 15

    .prologue
    const/high16 v14, 0x66610000

    const/high16 v13, 0x61720000

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1434
    const-string v7, "SamsungIME"

    const-string v8, "getSymbolKeyboard"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 1438
    const/4 v6, 0x0

    .line 1439
    .local v6, "xmlId":I
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "INPUT_LANGUAGE"

    const v9, 0x656e4742

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    .line 1440
    .local v3, "language":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v1

    .line 1441
    .local v1, "isPhoneNumberInput":Z
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    .line 1442
    .local v4, "method":I
    const/4 v5, 0x0

    .line 1444
    .local v5, "modeId":I
    if-nez v4, :cond_1e

    .line 1445
    if-eqz v1, :cond_2

    .line 1446
    const v6, 0x7f0501d7

    .line 1612
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v7, v6, :cond_1

    iget v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v7, v5, :cond_1

    iget-boolean v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v8

    if-eq v7, v8, :cond_35

    .line 1614
    :cond_1
    if-eqz v5, :cond_34

    .line 1615
    new-instance v7, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v6, v5}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 1620
    :goto_1
    iget-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-direct {p0, v7, v6, v5}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    .line 1625
    :goto_2
    iget-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    return-object v7

    .line 1448
    :cond_2
    const-string v7, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1450
    invoke-static {v3}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1451
    const v6, 0x7f050239

    .line 1519
    :goto_3
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SYMBOLS_PAGE"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v5

    goto :goto_0

    .line 1453
    :cond_3
    const v6, 0x7f050238

    goto :goto_3

    .line 1456
    :cond_4
    if-ne v3, v13, :cond_5

    .line 1457
    const v6, 0x7f050230

    goto :goto_3

    .line 1458
    :cond_5
    if-ne v3, v14, :cond_6

    .line 1459
    const v6, 0x7f050236

    goto :goto_3

    .line 1460
    :cond_6
    const/high16 v7, 0x75720000

    if-ne v3, v7, :cond_7

    .line 1461
    const v6, 0x7f050248

    goto :goto_3

    .line 1462
    :cond_7
    const/high16 v7, 0x68690000

    if-ne v3, v7, :cond_8

    .line 1463
    const v6, 0x7f05023b

    goto :goto_3

    .line 1464
    :cond_8
    const/high16 v7, 0x626e0000

    if-ne v3, v7, :cond_9

    .line 1465
    const v6, 0x7f050234

    goto :goto_3

    .line 1466
    :cond_9
    const/high16 v7, 0x67750000

    if-ne v3, v7, :cond_a

    .line 1467
    const v6, 0x7f050237

    goto :goto_3

    .line 1468
    :cond_a
    const/high16 v7, 0x6b6e0000

    if-ne v3, v7, :cond_b

    .line 1469
    const v6, 0x7f05023d

    goto :goto_3

    .line 1470
    :cond_b
    const/high16 v7, 0x6d6c0000

    if-ne v3, v7, :cond_c

    .line 1471
    const v6, 0x7f05023f

    goto :goto_3

    .line 1472
    :cond_c
    const/high16 v7, 0x6d720000

    if-ne v3, v7, :cond_d

    .line 1473
    const v6, 0x7f050240

    goto :goto_3

    .line 1474
    :cond_d
    const/high16 v7, 0x70610000

    if-ne v3, v7, :cond_e

    .line 1475
    const v6, 0x7f050243

    goto :goto_3

    .line 1476
    :cond_e
    const/high16 v7, 0x73690000

    if-ne v3, v7, :cond_f

    .line 1477
    const v6, 0x7f050244

    goto :goto_3

    .line 1478
    :cond_f
    const/high16 v7, 0x74650000

    if-ne v3, v7, :cond_10

    .line 1479
    const v6, 0x7f050246

    goto :goto_3

    .line 1480
    :cond_10
    const/high16 v7, 0x74610000

    if-ne v3, v7, :cond_11

    .line 1481
    const v6, 0x7f050245

    goto :goto_3

    .line 1482
    :cond_11
    const/high16 v7, 0x61730000

    if-ne v3, v7, :cond_12

    .line 1483
    const v6, 0x7f050231

    goto :goto_3

    .line 1484
    :cond_12
    const/high16 v7, 0x6e650000

    if-ne v3, v7, :cond_13

    .line 1485
    const v6, 0x7f050241

    goto/16 :goto_3

    .line 1486
    :cond_13
    const/high16 v7, 0x6f720000

    if-ne v3, v7, :cond_14

    .line 1487
    const v6, 0x7f050242

    goto/16 :goto_3

    .line 1488
    :cond_14
    const/high16 v7, 0x6b6d0000

    if-ne v3, v7, :cond_15

    .line 1489
    const v6, 0x7f05023c

    goto/16 :goto_3

    .line 1490
    :cond_15
    const/high16 v7, 0x6c6f0000

    if-ne v3, v7, :cond_16

    .line 1491
    const v6, 0x7f05023e

    goto/16 :goto_3

    .line 1492
    :cond_16
    const v7, 0x6d795a57

    if-ne v3, v7, :cond_17

    .line 1493
    const v6, 0x7f050249

    goto/16 :goto_3

    .line 1494
    :cond_17
    const/high16 v7, 0x74680000

    if-ne v3, v7, :cond_18

    .line 1495
    const v6, 0x7f050247

    goto/16 :goto_3

    .line 1496
    :cond_18
    const/high16 v7, 0x65730000

    if-eq v3, v7, :cond_19

    const v7, 0x65734553

    if-eq v3, v7, :cond_19

    const v7, 0x65735553

    if-ne v3, v7, :cond_1a

    :cond_19
    iget-boolean v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->ADD_SMILEY_SYMBOL:Z

    if-nez v7, :cond_1a

    .line 1500
    :try_start_0
    const-string v7, "qwerty_number_symbols_es"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto/16 :goto_3

    .line 1501
    :catch_0
    move-exception v0

    .line 1502
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f05022e

    .line 1503
    goto/16 :goto_3

    .line 1504
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_1a
    iget-boolean v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    if-eqz v7, :cond_1b

    .line 1505
    const v6, 0x7f050232

    goto/16 :goto_3

    .line 1506
    :cond_1b
    iget-boolean v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    if-eqz v7, :cond_1c

    .line 1507
    const v6, 0x7f050233

    goto/16 :goto_3

    .line 1508
    :cond_1c
    iget-boolean v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->ADD_SMILEY_SYMBOL:Z

    if-eqz v7, :cond_1d

    .line 1510
    :try_start_1
    const-string v7, "qwerty_number_symbols_add_smiley"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    goto/16 :goto_3

    .line 1511
    :catch_1
    move-exception v0

    .line 1512
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f05022e

    .line 1513
    goto/16 :goto_3

    .line 1516
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_1d
    const v6, 0x7f05022e

    goto/16 :goto_3

    .line 1522
    :cond_1e
    if-ne v4, v11, :cond_28

    .line 1523
    if-eqz v1, :cond_1f

    .line 1524
    const v6, 0x7f0501d7

    goto/16 :goto_0

    .line 1526
    :cond_1f
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v7

    if-eqz v7, :cond_22

    .line 1527
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v2

    .line 1529
    .local v2, "keypadType":I
    if-ne v2, v11, :cond_20

    .line 1530
    :try_start_2
    const-string v7, "phonepad_kr_cji_symbol"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v6

    .line 1559
    .end local v2    # "keypadType":I
    :goto_4
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SYMBOLS_PAGE"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v5

    goto/16 :goto_0

    .line 1531
    .restart local v2    # "keypadType":I
    :cond_20
    if-ne v2, v12, :cond_21

    .line 1532
    :try_start_3
    const-string v7, "phonepad_kr_cji_turbo_symbol"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v6

    goto :goto_4

    .line 1534
    :cond_21
    const v6, 0x7f0501e3

    goto :goto_4

    .line 1536
    :catch_2
    move-exception v0

    .line 1537
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f0501e3

    goto :goto_4

    .line 1540
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "keypadType":I
    :cond_22
    const-string v7, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 1542
    invoke-static {v3}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 1543
    const v6, 0x7f0501e6

    goto :goto_4

    .line 1545
    :cond_23
    const v6, 0x7f0501e5

    goto :goto_4

    .line 1548
    :cond_24
    invoke-static {v3}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 1549
    const v6, 0x7f0501e4

    goto :goto_4

    .line 1550
    :cond_25
    const/high16 v7, 0x6b6d0000

    if-ne v3, v7, :cond_26

    .line 1551
    const v6, 0x7f0501e7

    goto :goto_4

    .line 1552
    :cond_26
    const/high16 v7, 0x6c6f0000

    if-ne v3, v7, :cond_27

    .line 1553
    const v6, 0x7f0501e8

    goto :goto_4

    .line 1555
    :cond_27
    const v6, 0x7f0501e3

    goto :goto_4

    .line 1562
    :cond_28
    if-ne v4, v12, :cond_2a

    .line 1563
    invoke-direct {p0, v3}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getHWRSymbolKeyboardXmlId(I)I

    move-result v6

    .line 1564
    if-eqz v6, :cond_29

    .line 1565
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SYMBOLS_PAGE"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v5

    .line 1570
    :goto_5
    sget-boolean v7, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 1571
    const-string v7, "SamsungIME"

    const-string v8, "getSymbolKeyboard() - wrong keyboard mode in s3"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1567
    :cond_29
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getHWRKeyboardXmlId()I

    move-result v6

    .line 1568
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getHwrKeyboardModeId()I

    move-result v5

    goto :goto_5

    .line 1573
    :cond_2a
    const/4 v7, 0x4

    if-ne v4, v7, :cond_2b

    .line 1574
    const v6, 0x7f0500d7

    .line 1575
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getHwrKeyboardModeId()I

    move-result v5

    .line 1576
    sget-boolean v7, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 1577
    const-string v7, "SamsungIME"

    const-string v8, "getSymbolKeyboard() - wrong keyboard mode in s3"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1580
    :cond_2b
    const-string v7, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 1582
    invoke-static {v3}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 1583
    const v6, 0x7f050239

    .line 1609
    :goto_6
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SYMBOLS_PAGE"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v5

    goto/16 :goto_0

    .line 1585
    :cond_2c
    const v6, 0x7f050238

    goto :goto_6

    .line 1588
    :cond_2d
    if-ne v3, v13, :cond_2e

    .line 1589
    const v6, 0x7f050230

    goto :goto_6

    .line 1590
    :cond_2e
    if-ne v3, v14, :cond_2f

    .line 1591
    const v6, 0x7f050236

    goto :goto_6

    .line 1592
    :cond_2f
    const/high16 v7, 0x75720000

    if-ne v3, v7, :cond_30

    .line 1593
    const v6, 0x7f050248

    goto :goto_6

    .line 1594
    :cond_30
    iget-boolean v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    if-eqz v7, :cond_31

    .line 1595
    const v6, 0x7f050232

    goto :goto_6

    .line 1596
    :cond_31
    iget-boolean v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    if-eqz v7, :cond_32

    .line 1597
    const v6, 0x7f050233

    goto :goto_6

    .line 1598
    :cond_32
    iget-boolean v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->ADD_SMILEY_SYMBOL:Z

    if-eqz v7, :cond_33

    .line 1600
    :try_start_4
    const-string v7, "qwerty_number_symbols_add_smiley"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v6

    goto :goto_6

    .line 1601
    :catch_3
    move-exception v0

    .line 1602
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v6, 0x7f05022e

    .line 1603
    goto :goto_6

    .line 1606
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_33
    const v6, 0x7f05022e

    goto :goto_6

    .line 1617
    :cond_34
    new-instance v7, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v6}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_1

    .line 1622
    :cond_35
    iget-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iput-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_2
.end method

.method private getSymbolPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 14
    .param p1, "bIsLeftSplitKeyboard"    # Z

    .prologue
    .line 7411
    const-string v11, "SamsungIME"

    const-string v12, "getSymbolPopupKeyboard"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7413
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 7414
    const/4 v10, 0x0

    .line 7415
    .local v10, "xmlId":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v2

    .line 7416
    .local v2, "isPhoneNumberInput":Z
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "INPUT_LANGUAGE"

    const v13, 0x656e4742

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    .line 7417
    .local v5, "language":I
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v6

    .line 7418
    .local v6, "method":I
    const/4 v7, 0x0

    .line 7419
    .local v7, "modeId":I
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isSplitOneHandKeypadRightSet()Z

    move-result v3

    .line 7421
    .local v3, "isRightSet":Z
    const/4 v11, 0x7

    if-ne v6, v11, :cond_4d

    .line 7422
    if-eqz v2, :cond_6

    .line 7423
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isSplitEnableOneHandKeypad()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 7425
    if-eqz v3, :cond_2

    .line 7426
    if-eqz p1, :cond_1

    .line 7427
    :try_start_0
    const-string v11, "split_number_arrow"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 7832
    :goto_0
    iget-object v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v11, :cond_0

    iget v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v11, v10, :cond_0

    iget v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v11, v7, :cond_0

    iget-boolean v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v12

    if-eq v11, v12, :cond_7c

    .line 7834
    :cond_0
    if-eqz v7, :cond_7b

    .line 7835
    new-instance v11, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12, v10, v7}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 7840
    :goto_1
    iget-object v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-direct {p0, v11, v10, v7}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    .line 7845
    :goto_2
    iget-object v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    return-object v11

    .line 7429
    :cond_1
    :try_start_1
    const-string v11, "split_phone_symbol_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_0

    .line 7432
    :cond_2
    if-eqz p1, :cond_3

    .line 7433
    const-string v11, "split_phone_symbol_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_0

    .line 7435
    :cond_3
    const-string v11, "split_number_arrow"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    goto :goto_0

    .line 7438
    :catch_0
    move-exception v1

    .line 7439
    .local v1, "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f0501d7

    .line 7440
    goto :goto_0

    .line 7442
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_4
    if-eqz p1, :cond_5

    .line 7444
    :try_start_2
    const-string v11, "split_phone_symbol_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v10

    goto :goto_0

    .line 7445
    :catch_1
    move-exception v1

    .line 7446
    .restart local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f0501d7

    .line 7447
    goto :goto_0

    .line 7450
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_5
    :try_start_3
    const-string v11, "split_phone_symbol_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v10

    goto :goto_0

    .line 7451
    :catch_2
    move-exception v1

    .line 7452
    .restart local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f0501d7

    .line 7453
    goto :goto_0

    .line 7457
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_6
    iget-boolean v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsKorMode:Z

    if-eqz v11, :cond_d

    const/high16 v11, 0x6b6f0000

    if-ne v5, v11, :cond_d

    .line 7458
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v4

    .line 7459
    .local v4, "keypadType":I
    const/4 v11, 0x1

    if-ne v4, v11, :cond_9

    .line 7461
    if-eqz p1, :cond_8

    .line 7462
    :try_start_4
    const-string v11, "split_kr_cji_symbol_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v10

    .line 7664
    .end local v4    # "keypadType":I
    :cond_7
    :goto_3
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "SYMBOLS_PAGE"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v11

    invoke-direct {p0, v11}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v7

    goto/16 :goto_0

    .line 7464
    .restart local v4    # "keypadType":I
    :cond_8
    :try_start_5
    const-string v11, "split_kr_cji_symbol_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v10

    goto :goto_3

    .line 7466
    :catch_3
    move-exception v1

    .line 7467
    .restart local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05022e

    .line 7468
    goto :goto_3

    .line 7469
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_9
    const/4 v11, 0x2

    if-ne v4, v11, :cond_b

    .line 7471
    if-eqz p1, :cond_a

    .line 7472
    :try_start_6
    const-string v11, "split_kr_cji_turbo_symbol_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_3

    .line 7474
    :cond_a
    const-string v11, "split_kr_cji_turbo_symbol_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    move-result v10

    goto :goto_3

    .line 7476
    :catch_4
    move-exception v1

    .line 7477
    .restart local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05022e

    .line 7478
    goto :goto_3

    .line 7479
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_b
    if-nez v4, :cond_7

    .line 7481
    if-eqz p1, :cond_c

    .line 7482
    :try_start_7
    const-string v11, "split_number_symbols_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_3

    .line 7484
    :cond_c
    const-string v11, "split_number_symbols_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_5

    move-result v10

    goto :goto_3

    .line 7486
    :catch_5
    move-exception v1

    .line 7487
    .restart local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05022e

    goto :goto_3

    .line 7491
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    .end local v4    # "keypadType":I
    :cond_d
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isSplitEnableOneHandKeypad()Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 7493
    if-eqz v3, :cond_14

    .line 7494
    if-eqz p1, :cond_13

    .line 7495
    const/high16 v11, 0x61720000

    if-ne v5, v11, :cond_e

    .line 7496
    :try_start_8
    const-string v11, "split_number_symbols_left_arabic"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_3

    .line 7497
    :cond_e
    const/high16 v11, 0x66610000

    if-ne v5, v11, :cond_f

    .line 7498
    const-string v11, "split_number_symbols_left_farsi"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_3

    .line 7499
    :cond_f
    const/high16 v11, 0x75720000

    if-ne v5, v11, :cond_10

    .line 7500
    const-string v11, "split_number_symbols_left_urdu"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_3

    .line 7501
    :cond_10
    iget-boolean v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    if-eqz v11, :cond_11

    .line 7502
    const-string v11, "split_number_symbols_left_att"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    .line 7503
    :cond_11
    iget-boolean v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    if-eqz v11, :cond_12

    .line 7504
    const-string v11, "split_number_symbols_left_att_with_number_key_first_line"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    .line 7506
    :cond_12
    const-string v11, "split_number_symbols_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    .line 7509
    :cond_13
    const-string v11, "split_number_arrow"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    .line 7512
    :cond_14
    if-eqz p1, :cond_15

    .line 7513
    const-string v11, "split_number_arrow"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    .line 7515
    :cond_15
    const/high16 v11, 0x61720000

    if-ne v5, v11, :cond_16

    .line 7516
    const-string v11, "split_number_symbols_left_arabic"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    .line 7517
    :cond_16
    const/high16 v11, 0x66610000

    if-ne v5, v11, :cond_17

    .line 7518
    const-string v11, "split_number_symbols_left_farsi"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    .line 7519
    :cond_17
    const/high16 v11, 0x75720000

    if-ne v5, v11, :cond_18

    .line 7520
    const-string v11, "split_number_symbols_left_urdu"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    .line 7521
    :cond_18
    iget-boolean v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    if-eqz v11, :cond_19

    .line 7522
    const-string v11, "split_number_symbols_left_att"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    .line 7523
    :cond_19
    iget-boolean v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    if-eqz v11, :cond_1a

    .line 7524
    const-string v11, "split_number_symbols_left_att_with_number_key_first_line"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    .line 7526
    :cond_1a
    const-string v11, "split_number_symbols_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_6

    move-result v10

    goto/16 :goto_3

    .line 7530
    :catch_6
    move-exception v0

    .line 7531
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05022e

    .line 7532
    goto/16 :goto_3

    .line 7534
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1b
    if-eqz p1, :cond_34

    .line 7536
    :try_start_9
    const-string v11, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 7538
    invoke-static {v5}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 7539
    const-string v11, "split_number_symbols_left_he_arabic"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    .line 7541
    :cond_1c
    const-string v11, "split_number_symbols_left_he"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    .line 7543
    :cond_1d
    const/high16 v11, 0x61720000

    if-ne v5, v11, :cond_1e

    .line 7544
    const-string v11, "split_number_symbols_left_arabic"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    .line 7545
    :cond_1e
    const/high16 v11, 0x66610000

    if-ne v5, v11, :cond_1f

    .line 7546
    const-string v11, "split_number_symbols_left_farsi"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    .line 7547
    :cond_1f
    const/high16 v11, 0x75720000

    if-ne v5, v11, :cond_20

    .line 7548
    const-string v11, "split_number_symbols_left_urdu"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    .line 7549
    :cond_20
    const/high16 v11, 0x6b6d0000

    if-ne v5, v11, :cond_21

    .line 7550
    const-string v11, "split_number_symbols_left_km"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    .line 7551
    :cond_21
    invoke-static {v5}, Lcom/diotek/ime/framework/util/Utils;->isLaoLanguage(I)Z

    move-result v11

    if-eqz v11, :cond_22

    .line 7552
    const-string v11, "split_number_symbols_left_lo"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    .line 7553
    :cond_22
    const v11, 0x6d795a57

    if-ne v5, v11, :cond_23

    .line 7554
    const-string v11, "split_number_symbols_left_zw"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    .line 7555
    :cond_23
    const/high16 v11, 0x68690000

    if-ne v5, v11, :cond_24

    .line 7556
    const-string v11, "split_number_symbols_left_hi"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    .line 7557
    :cond_24
    const/high16 v11, 0x626e0000

    if-ne v5, v11, :cond_25

    .line 7558
    const-string v11, "split_number_symbols_left_bn"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    .line 7559
    :cond_25
    const/high16 v11, 0x67750000

    if-ne v5, v11, :cond_26

    .line 7560
    const-string v11, "split_number_symbols_left_gu"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    .line 7561
    :cond_26
    const/high16 v11, 0x74610000

    if-ne v5, v11, :cond_27

    .line 7562
    const-string v11, "split_number_symbols_left_ta"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    .line 7563
    :cond_27
    const/high16 v11, 0x6b6e0000

    if-ne v5, v11, :cond_28

    .line 7564
    const-string v11, "split_number_symbols_left_kn"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    .line 7565
    :cond_28
    const/high16 v11, 0x74650000

    if-ne v5, v11, :cond_29

    .line 7566
    const-string v11, "split_number_symbols_left_te"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    .line 7567
    :cond_29
    const/high16 v11, 0x6d6c0000

    if-ne v5, v11, :cond_2a

    .line 7568
    const-string v11, "split_number_symbols_left_ml"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    .line 7569
    :cond_2a
    const/high16 v11, 0x6d720000

    if-ne v5, v11, :cond_2b

    .line 7570
    const-string v11, "split_number_symbols_left_mr"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    .line 7571
    :cond_2b
    const/high16 v11, 0x70610000

    if-ne v5, v11, :cond_2c

    .line 7572
    const-string v11, "split_number_symbols_left_pa"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    .line 7573
    :cond_2c
    const/high16 v11, 0x73690000

    if-ne v5, v11, :cond_2d

    .line 7574
    const-string v11, "split_number_symbols_left_si"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    .line 7575
    :cond_2d
    const/high16 v11, 0x61730000

    if-ne v5, v11, :cond_2e

    .line 7576
    const-string v11, "split_number_symbols_left_as"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    .line 7577
    :cond_2e
    const/high16 v11, 0x6e650000

    if-ne v5, v11, :cond_2f

    .line 7578
    const-string v11, "split_number_symbols_left_ne"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    .line 7579
    :cond_2f
    const/high16 v11, 0x6f720000

    if-ne v5, v11, :cond_30

    .line 7580
    const-string v11, "split_number_symbols_left_or"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    .line 7581
    :cond_30
    const/high16 v11, 0x74680000

    if-ne v5, v11, :cond_31

    .line 7582
    const-string v11, "split_number_symbols_left_th"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    .line 7583
    :cond_31
    iget-boolean v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    if-eqz v11, :cond_32

    .line 7584
    const-string v11, "split_number_symbols_left_att"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    .line 7585
    :cond_32
    iget-boolean v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    if-eqz v11, :cond_33

    .line 7586
    const-string v11, "split_number_symbols_left_att_with_number_key_first_line"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    .line 7588
    :cond_33
    const-string v11, "split_number_symbols_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_7

    move-result v10

    goto/16 :goto_3

    .line 7590
    :catch_7
    move-exception v1

    .line 7591
    .restart local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05022e

    .line 7592
    goto/16 :goto_3

    .line 7595
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_34
    :try_start_a
    const-string v11, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_36

    .line 7597
    invoke-static {v5}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v11

    if-eqz v11, :cond_35

    .line 7598
    const-string v11, "split_number_symbols_right_he_arabic"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_8

    move-result v10

    .line 7652
    :goto_4
    const v11, 0x7f05022e

    if-ne v10, v11, :cond_7

    .line 7653
    const/4 v8, 0x0

    .line 7655
    .local v8, "secXmlId":I
    :try_start_b
    const-string v11, "split_number_symbols_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_12

    move-result v8

    .line 7656
    move v10, v8

    goto/16 :goto_3

    .line 7600
    .end local v8    # "secXmlId":I
    :cond_35
    :try_start_c
    const-string v11, "split_number_symbols_right_he"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_4

    .line 7602
    :cond_36
    const/high16 v11, 0x61720000

    if-ne v5, v11, :cond_37

    .line 7603
    const-string v11, "split_number_symbols_right_arabic"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_4

    .line 7604
    :cond_37
    const/high16 v11, 0x66610000

    if-ne v5, v11, :cond_38

    .line 7605
    const-string v11, "split_number_symbols_right_farsi"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_4

    .line 7606
    :cond_38
    const/high16 v11, 0x75720000

    if-ne v5, v11, :cond_39

    .line 7607
    const-string v11, "split_number_symbols_right_urdu"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_4

    .line 7608
    :cond_39
    const/high16 v11, 0x6b6d0000

    if-ne v5, v11, :cond_3a

    .line 7609
    const-string v11, "split_number_symbols_right_km"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_4

    .line 7610
    :cond_3a
    invoke-static {v5}, Lcom/diotek/ime/framework/util/Utils;->isLaoLanguage(I)Z

    move-result v11

    if-eqz v11, :cond_3b

    .line 7611
    const-string v11, "split_number_symbols_right_lo"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_4

    .line 7612
    :cond_3b
    const v11, 0x6d795a57

    if-ne v5, v11, :cond_3c

    .line 7613
    const-string v11, "split_number_symbols_right_zw"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_4

    .line 7614
    :cond_3c
    const/high16 v11, 0x68690000

    if-ne v5, v11, :cond_3d

    .line 7615
    const-string v11, "split_number_symbols_right_hi"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_4

    .line 7616
    :cond_3d
    const/high16 v11, 0x626e0000

    if-ne v5, v11, :cond_3e

    .line 7617
    const-string v11, "split_number_symbols_right_bn"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_4

    .line 7618
    :cond_3e
    const/high16 v11, 0x67750000

    if-ne v5, v11, :cond_3f

    .line 7619
    const-string v11, "split_number_symbols_right_gu"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_4

    .line 7620
    :cond_3f
    const/high16 v11, 0x74610000

    if-ne v5, v11, :cond_40

    .line 7621
    const-string v11, "split_number_symbols_right_ta"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_4

    .line 7622
    :cond_40
    const/high16 v11, 0x6b6e0000

    if-ne v5, v11, :cond_41

    .line 7623
    const-string v11, "split_number_symbols_right_kn"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_4

    .line 7624
    :cond_41
    const/high16 v11, 0x74650000

    if-ne v5, v11, :cond_42

    .line 7625
    const-string v11, "split_number_symbols_right_te"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_4

    .line 7626
    :cond_42
    const/high16 v11, 0x6d6c0000

    if-ne v5, v11, :cond_43

    .line 7627
    const-string v11, "split_number_symbols_right_ml"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_4

    .line 7628
    :cond_43
    const/high16 v11, 0x6d720000

    if-ne v5, v11, :cond_44

    .line 7629
    const-string v11, "split_number_symbols_right_mr"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_4

    .line 7630
    :cond_44
    const/high16 v11, 0x70610000

    if-ne v5, v11, :cond_45

    .line 7631
    const-string v11, "split_number_symbols_right_pa"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_4

    .line 7632
    :cond_45
    const/high16 v11, 0x73690000

    if-ne v5, v11, :cond_46

    .line 7633
    const-string v11, "split_number_symbols_right_si"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_4

    .line 7634
    :cond_46
    const/high16 v11, 0x61730000

    if-ne v5, v11, :cond_47

    .line 7635
    const-string v11, "split_number_symbols_right_as"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_4

    .line 7636
    :cond_47
    const/high16 v11, 0x6e650000

    if-ne v5, v11, :cond_48

    .line 7637
    const-string v11, "split_number_symbols_right_ne"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_4

    .line 7638
    :cond_48
    const/high16 v11, 0x6f720000

    if-ne v5, v11, :cond_49

    .line 7639
    const-string v11, "split_number_symbols_right_or"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_4

    .line 7640
    :cond_49
    const/high16 v11, 0x74680000

    if-ne v5, v11, :cond_4a

    .line 7641
    const-string v11, "split_number_symbols_right_th"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_4

    .line 7642
    :cond_4a
    const/high16 v11, 0x65730000

    if-eq v5, v11, :cond_4b

    const v11, 0x65734553

    if-eq v5, v11, :cond_4b

    const v11, 0x65735553

    if-ne v5, v11, :cond_4c

    .line 7645
    :cond_4b
    const-string v11, "split_number_symbols_right_es"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_4

    .line 7647
    :cond_4c
    const-string v11, "split_number_symbols_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_8

    move-result v10

    goto/16 :goto_4

    .line 7649
    :catch_8
    move-exception v1

    .line 7650
    .restart local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f05022e

    goto/16 :goto_4

    .line 7667
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_4d
    const/16 v11, 0x8

    if-ne v6, v11, :cond_7a

    .line 7668
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v11

    if-eqz v11, :cond_52

    .line 7670
    const/high16 v11, 0x61720000

    if-ne v5, v11, :cond_4e

    .line 7671
    :try_start_d
    const-string v11, "floating_number_symbols_arabic"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    move-result v10

    .line 7684
    :goto_5
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "SYMBOLS_PAGE"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v11

    invoke-direct {p0, v11}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v7

    goto/16 :goto_0

    .line 7672
    :cond_4e
    const/high16 v11, 0x66610000

    if-ne v5, v11, :cond_4f

    .line 7673
    :try_start_e
    const-string v11, "floating_number_symbols_farsi"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_5

    .line 7674
    :cond_4f
    const/high16 v11, 0x75720000

    if-ne v5, v11, :cond_50

    .line 7675
    const-string v11, "floating_number_symbols_urdu"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_5

    .line 7676
    :cond_50
    const/high16 v11, 0x74680000

    if-ne v5, v11, :cond_51

    .line 7677
    const-string v11, "floating_number_symbols_th"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_5

    .line 7679
    :cond_51
    const-string v11, "floating_number_symbols"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    move-result v10

    goto :goto_5

    .line 7681
    :catch_9
    move-exception v0

    .line 7682
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getFloatingHWRKeyboardXmlId()I

    move-result v10

    goto :goto_5

    .line 7686
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_52
    if-eqz v2, :cond_53

    .line 7688
    :try_start_f
    const-string v11, "floating_phone_symbol"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_f} :catch_a

    move-result v10

    goto/16 :goto_0

    .line 7689
    :catch_a
    move-exception v1

    .line 7690
    .restart local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f0501d7

    .line 7691
    goto/16 :goto_0

    .line 7693
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_53
    iget-boolean v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsKorMode:Z

    if-eqz v11, :cond_5e

    const/high16 v11, 0x6b6f0000

    if-ne v5, v11, :cond_5e

    .line 7694
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v4

    .line 7695
    .restart local v4    # "keypadType":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getNumberAndSymbolsKeypadType()I

    move-result v9

    .line 7696
    .local v9, "symKeyboardType":I
    const/4 v11, 0x2

    if-ne v9, v11, :cond_57

    const/4 v11, 0x1

    if-eq v4, v11, :cond_54

    const/4 v11, 0x2

    if-eq v4, v11, :cond_54

    const/4 v11, 0x3

    if-eq v4, v11, :cond_54

    const/4 v11, 0x4

    if-ne v4, v11, :cond_57

    .line 7702
    :cond_54
    :try_start_10
    iget-boolean v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-eqz v11, :cond_56

    .line 7703
    const-string v11, "floating_kr_cji_symbol"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_10} :catch_b

    move-result v10

    .line 7820
    .end local v4    # "keypadType":I
    .end local v9    # "symKeyboardType":I
    :cond_55
    :goto_6
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "SYMBOLS_PAGE"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v11

    invoke-direct {p0, v11}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v7

    goto/16 :goto_0

    .line 7705
    .restart local v4    # "keypadType":I
    .restart local v9    # "symKeyboardType":I
    :cond_56
    :try_start_11
    const-string v11, "floating_phonepad_symbol"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_11} :catch_b

    move-result v10

    goto :goto_6

    .line 7707
    :catch_b
    move-exception v1

    .line 7708
    .restart local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f0501e3

    .line 7709
    goto :goto_6

    .line 7710
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_57
    const/4 v11, 0x1

    if-ne v9, v11, :cond_59

    .line 7712
    :try_start_12
    iget-boolean v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->ADD_SMILEY_SYMBOL:Z

    if-eqz v11, :cond_58

    .line 7713
    const-string v11, "floating_number_symbols_add_smiley"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_6

    .line 7715
    :cond_58
    const-string v11, "floating_number_symbols"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_12} :catch_c

    move-result v10

    goto :goto_6

    .line 7717
    :catch_c
    move-exception v1

    .line 7718
    .restart local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f0501e3

    .line 7719
    goto :goto_6

    .line 7721
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_59
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v11

    if-nez v11, :cond_5a

    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v11

    if-eqz v11, :cond_5c

    .line 7724
    :cond_5a
    :try_start_13
    iget-boolean v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-eqz v11, :cond_5b

    .line 7725
    const-string v11, "floating_kr_cji_symbol"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_6

    .line 7727
    :cond_5b
    const-string v11, "floating_phonepad_symbol"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_13} :catch_d

    move-result v10

    goto :goto_6

    .line 7729
    :catch_d
    move-exception v1

    .line 7730
    .restart local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f0501e3

    .line 7731
    goto :goto_6

    .line 7734
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_5c
    :try_start_14
    iget-boolean v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->ADD_SMILEY_SYMBOL:Z

    if-eqz v11, :cond_5d

    .line 7735
    const-string v11, "floating_number_symbols_add_smiley"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_6

    .line 7737
    :cond_5d
    const-string v11, "floating_number_symbols"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14 .. :try_end_14} :catch_e

    move-result v10

    goto :goto_6

    .line 7739
    :catch_e
    move-exception v1

    .line 7740
    .restart local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f0501e3

    goto :goto_6

    .line 7746
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    .end local v4    # "keypadType":I
    .end local v9    # "symKeyboardType":I
    :cond_5e
    :try_start_15
    const-string v11, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_60

    .line 7748
    invoke-static {v5}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v11

    if-eqz v11, :cond_5f

    .line 7749
    const-string v11, "floating_number_symbols_he_arabic"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_15} :catch_f

    move-result v10

    .line 7810
    :goto_7
    const v11, 0x7f0501e3

    if-ne v10, v11, :cond_55

    .line 7811
    const/4 v8, 0x0

    .line 7813
    .restart local v8    # "secXmlId":I
    :try_start_16
    const-string v11, "floating_number_symbols"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_16} :catch_11

    move-result v8

    .line 7814
    move v10, v8

    goto/16 :goto_6

    .line 7751
    .end local v8    # "secXmlId":I
    :cond_5f
    :try_start_17
    const-string v11, "floating_number_symbols_he"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_7

    .line 7753
    :cond_60
    const/high16 v11, 0x61720000

    if-ne v5, v11, :cond_61

    .line 7754
    const-string v11, "floating_number_symbols_arabic"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_7

    .line 7755
    :cond_61
    const/high16 v11, 0x66610000

    if-ne v5, v11, :cond_62

    .line 7756
    const-string v11, "floating_number_symbols_farsi"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_7

    .line 7757
    :cond_62
    const/high16 v11, 0x75720000

    if-ne v5, v11, :cond_63

    .line 7758
    const-string v11, "floating_number_symbols_urdu"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_7

    .line 7759
    :cond_63
    const/high16 v11, 0x68690000

    if-ne v5, v11, :cond_64

    .line 7760
    const-string v11, "floating_number_symbols_hi"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_7

    .line 7761
    :cond_64
    const/high16 v11, 0x626e0000

    if-ne v5, v11, :cond_65

    .line 7762
    const-string v11, "floating_number_symbols_bn"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_7

    .line 7763
    :cond_65
    const/high16 v11, 0x67750000

    if-ne v5, v11, :cond_66

    .line 7764
    const-string v11, "floating_number_symbols_gu"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_7

    .line 7765
    :cond_66
    const/high16 v11, 0x6b6e0000

    if-ne v5, v11, :cond_67

    .line 7766
    const-string v11, "floating_number_symbols_kn"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_7

    .line 7767
    :cond_67
    const/high16 v11, 0x6d6c0000

    if-ne v5, v11, :cond_68

    .line 7768
    const-string v11, "floating_number_symbols_ml"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_7

    .line 7769
    :cond_68
    const/high16 v11, 0x6d720000

    if-ne v5, v11, :cond_69

    .line 7770
    const-string v11, "floating_number_symbols_mr"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_7

    .line 7771
    :cond_69
    const/high16 v11, 0x70610000

    if-ne v5, v11, :cond_6a

    .line 7772
    const-string v11, "floating_number_symbols_pa"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_7

    .line 7773
    :cond_6a
    const/high16 v11, 0x73690000

    if-ne v5, v11, :cond_6b

    .line 7774
    const-string v11, "floating_number_symbols_si"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_7

    .line 7775
    :cond_6b
    const/high16 v11, 0x74610000

    if-ne v5, v11, :cond_6c

    .line 7776
    const-string v11, "floating_number_symbols_ta"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_7

    .line 7777
    :cond_6c
    const/high16 v11, 0x74650000

    if-ne v5, v11, :cond_6d

    .line 7778
    const-string v11, "floating_number_symbols_te"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_7

    .line 7779
    :cond_6d
    const/high16 v11, 0x61730000

    if-ne v5, v11, :cond_6e

    .line 7780
    const-string v11, "floating_number_symbols_as"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_7

    .line 7781
    :cond_6e
    const/high16 v11, 0x6e650000

    if-ne v5, v11, :cond_6f

    .line 7782
    const-string v11, "floating_number_symbols_ne"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_7

    .line 7783
    :cond_6f
    const/high16 v11, 0x6f720000

    if-ne v5, v11, :cond_70

    .line 7784
    const-string v11, "floating_number_symbols_or"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_7

    .line 7785
    :cond_70
    const/high16 v11, 0x6b6d0000

    if-ne v5, v11, :cond_71

    .line 7786
    const-string v11, "floating_number_symbols_km"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_7

    .line 7787
    :cond_71
    const/high16 v11, 0x6c6f0000

    if-ne v5, v11, :cond_72

    .line 7788
    const-string v11, "floating_number_symbols_lo"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_7

    .line 7789
    :cond_72
    const v11, 0x6d795a57

    if-ne v5, v11, :cond_73

    .line 7790
    const-string v11, "floating_number_symbols_zw"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_7

    .line 7791
    :cond_73
    const/high16 v11, 0x74680000

    if-ne v5, v11, :cond_74

    .line 7792
    const-string v11, "floating_number_symbols_th"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_7

    .line 7793
    :cond_74
    const/high16 v11, 0x65730000

    if-eq v5, v11, :cond_75

    const v11, 0x65734553

    if-eq v5, v11, :cond_75

    const v11, 0x65735553

    if-ne v5, v11, :cond_76

    :cond_75
    iget-boolean v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->ADD_SMILEY_SYMBOL:Z

    if-nez v11, :cond_76

    .line 7796
    const-string v11, "floating_number_symbols_es"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_7

    .line 7797
    :cond_76
    iget-boolean v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    if-eqz v11, :cond_77

    .line 7798
    const-string v11, "floating_number_symbols_att"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_7

    .line 7799
    :cond_77
    iget-boolean v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    if-eqz v11, :cond_78

    .line 7800
    const-string v11, "floating_number_symbols_att_with_number_key_first_line"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_7

    .line 7801
    :cond_78
    iget-boolean v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->ADD_SMILEY_SYMBOL:Z

    if-eqz v11, :cond_79

    .line 7802
    const-string v11, "floating_number_symbols_add_smiley"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_7

    .line 7804
    :cond_79
    const-string v11, "floating_number_symbols"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_17} :catch_f

    move-result v10

    goto/16 :goto_7

    .line 7806
    :catch_f
    move-exception v1

    .line 7807
    .restart local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f0501e3

    goto/16 :goto_7

    .line 7825
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_7a
    :try_start_18
    const-string v11, "floating_number_symbols"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_18 .. :try_end_18} :catch_10

    move-result v10

    .line 7829
    :goto_8
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "SYMBOLS_PAGE"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v11

    invoke-direct {p0, v11}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v7

    goto/16 :goto_0

    .line 7826
    :catch_10
    move-exception v1

    .line 7827
    .restart local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v10, 0x7f0501e3

    goto :goto_8

    .line 7837
    .end local v1    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_7b
    new-instance v11, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12, v10}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_1

    .line 7842
    :cond_7c
    iget-object v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iput-object v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_2

    .line 7815
    .restart local v8    # "secXmlId":I
    :catch_11
    move-exception v11

    goto/16 :goto_6

    .line 7657
    :catch_12
    move-exception v11

    goto/16 :goto_3
.end method

.method private getTextKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 9

    .prologue
    .line 1923
    const-string v6, "SamsungIME"

    const-string v7, "getTextKeyboard"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 1926
    const/4 v5, 0x0

    .line 1928
    .local v5, "xmlId":I
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "INPUT_LANGUAGE"

    const v8, 0x656e4742

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    .line 1929
    .local v2, "language":I
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v3

    .line 1930
    .local v3, "method":I
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 1931
    .local v1, "info":Landroid/view/inputmethod/EditorInfo;
    const/4 v4, 0x0

    .line 1933
    .local v4, "modeId":I
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->isEnableOneHandKeypad()Z

    move-result v0

    .line 1935
    .local v0, "bUseOneHand":Z
    if-nez v3, :cond_2

    .line 1936
    if-eqz v0, :cond_1

    .line 1937
    invoke-direct {p0, v2}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getOneHandQwertyKeyboardXmlId(I)I

    move-result v5

    .line 1941
    :goto_0
    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I

    move-result v4

    .line 1964
    :goto_1
    iget-object v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v6, v5, :cond_0

    iget v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v6, v4, :cond_0

    iget-boolean v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v7

    if-eq v6, v7, :cond_9

    .line 1966
    :cond_0
    if-eqz v4, :cond_8

    .line 1967
    new-instance v6, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v5, v4}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 1972
    :goto_2
    iget-object v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-direct {p0, v6, v5, v4}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    .line 1976
    :goto_3
    iget-object v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    return-object v6

    .line 1939
    :cond_1
    invoke-direct {p0, v2}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getQwertyKeyboardXmlId(I)I

    move-result v5

    goto :goto_0

    .line 1942
    :cond_2
    const/4 v6, 0x2

    if-ne v3, v6, :cond_3

    .line 1943
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getHWRKeyboardXmlId()I

    move-result v5

    .line 1944
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getHwrKeyboardModeId()I

    move-result v4

    goto :goto_1

    .line 1945
    :cond_3
    const/4 v6, 0x4

    if-ne v3, v6, :cond_4

    .line 1946
    const v5, 0x7f0500d7

    .line 1947
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getHwrKeyboardModeId()I

    move-result v4

    goto :goto_1

    .line 1948
    :cond_4
    const/4 v6, 0x1

    if-ne v3, v6, :cond_6

    .line 1949
    if-eqz v0, :cond_5

    .line 1950
    invoke-direct {p0, v2}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getOneHandPhonepadXmlId(I)I

    move-result v5

    .line 1954
    :goto_4
    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I

    move-result v4

    goto :goto_1

    .line 1952
    :cond_5
    invoke-direct {p0, v2}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getPhonepadXmlId(I)I

    move-result v5

    goto :goto_4

    .line 1956
    :cond_6
    if-eqz v0, :cond_7

    .line 1957
    invoke-direct {p0, v2}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getOneHandQwertyKeyboardXmlId(I)I

    move-result v5

    .line 1961
    :goto_5
    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I

    move-result v4

    goto :goto_1

    .line 1959
    :cond_7
    invoke-direct {p0, v2}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getQwertyKeyboardXmlId(I)I

    move-result v5

    goto :goto_5

    .line 1969
    :cond_8
    new-instance v6, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v5}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_2

    .line 1974
    :cond_9
    iget-object v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iput-object v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_3
.end method

.method private getTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I
    .locals 12
    .param p1, "info"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 2169
    if-eqz p1, :cond_0

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-nez v9, :cond_1

    .line 2170
    :cond_0
    const/4 v9, 0x0

    .line 2284
    :goto_0
    return v9

    .line 2173
    :cond_1
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v8

    .line 2174
    .local v8, "preference":Landroid/content/SharedPreferences;
    const-string v9, "da_mode"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 2176
    .local v5, "isDaMode":Z
    iget v9, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v9, 0xf

    .line 2177
    .local v0, "editorClass":I
    iget v9, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v1, v9, 0xff0

    .line 2178
    .local v1, "editorType":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v4

    .line 2179
    .local v4, "inputRange":I
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v3

    .line 2180
    .local v3, "inputMethod":I
    const/16 v9, 0x8

    if-ne v3, v9, :cond_4

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v9

    if-nez v9, :cond_4

    const/4 v6, 0x1

    .line 2183
    .local v6, "isFloatingQwertyKeyboard":Z
    :goto_1
    const/4 v7, 0x0

    .line 2185
    .local v7, "isVoiceInputEnable":Z
    iget-boolean v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-eqz v9, :cond_2

    .line 2186
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v10, "SETTINGS_DEFAULT_VOICE_INPUT"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVoiceInputEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v7, 0x1

    .line 2190
    :cond_2
    :goto_2
    if-nez v4, :cond_18

    .line 2191
    packed-switch v0, :pswitch_data_0

    .line 2205
    sparse-switch v1, :sswitch_data_0

    .line 2228
    iget-boolean v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-eqz v9, :cond_11

    .line 2230
    :try_start_0
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v9

    array-length v9, v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_d

    if-nez v5, :cond_d

    .line 2231
    if-nez v7, :cond_3

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_c

    .line 2232
    :cond_3
    const v9, 0x7f0800da

    goto :goto_0

    .line 2180
    .end local v6    # "isFloatingQwertyKeyboard":Z
    .end local v7    # "isVoiceInputEnable":Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 2186
    .restart local v6    # "isFloatingQwertyKeyboard":Z
    .restart local v7    # "isVoiceInputEnable":Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_2

    .line 2195
    :pswitch_0
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2196
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v9

    array-length v9, v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_6

    .line 2197
    const v9, 0x7f0800da

    goto/16 :goto_0

    .line 2199
    :cond_6
    const v9, 0x7f0800db

    goto/16 :goto_0

    .line 2202
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2208
    :sswitch_0
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v9

    array-length v9, v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_9

    if-nez v5, :cond_9

    .line 2209
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->isUseGlobalKey()Z

    move-result v9

    if-nez v9, :cond_8

    iget-boolean v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-nez v9, :cond_8

    .line 2210
    const v9, 0x7f0800dd

    goto/16 :goto_0

    .line 2212
    :cond_8
    const v9, 0x7f0800df

    goto/16 :goto_0

    .line 2215
    :cond_9
    const v9, 0x7f0800dd

    goto/16 :goto_0

    .line 2218
    :sswitch_1
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v9

    array-length v9, v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_b

    if-nez v5, :cond_b

    .line 2219
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->isUseGlobalKey()Z

    move-result v9

    if-nez v9, :cond_a

    iget-boolean v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-nez v9, :cond_a

    .line 2220
    const v9, 0x7f0800dc

    goto/16 :goto_0

    .line 2222
    :cond_a
    const v9, 0x7f0800de

    goto/16 :goto_0

    .line 2225
    :cond_b
    const v9, 0x7f0800dc

    goto/16 :goto_0

    .line 2234
    :cond_c
    :try_start_1
    const-string v9, "mode_normal_voice_off"

    invoke-static {v9}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v9

    goto/16 :goto_0

    .line 2237
    :cond_d
    if-nez v7, :cond_e

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 2238
    :cond_e
    const v9, 0x7f0800db

    goto/16 :goto_0

    .line 2240
    :cond_f
    const-string v9, "mode_single_language_voice_off"

    invoke-static {v9}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    goto/16 :goto_0

    .line 2243
    :catch_0
    move-exception v2

    .line 2244
    .local v2, "exception":Landroid/content/res/Resources$NotFoundException;
    const-string v9, "SamsungIME"

    const-string v10, "getTextKeyboardModeId() : return value not found exception!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v9

    array-length v9, v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_10

    if-nez v5, :cond_10

    .line 2247
    const v9, 0x7f0800da

    goto/16 :goto_0

    .line 2249
    :cond_10
    const v9, 0x7f0800db

    goto/16 :goto_0

    .line 2253
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_11
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v9

    array-length v9, v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_15

    if-nez v5, :cond_15

    .line 2254
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->isUseGlobalKey()Z

    move-result v9

    if-nez v9, :cond_14

    .line 2255
    iget-boolean v9, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsCommaKeyAsDefault:Z

    if-eqz v9, :cond_13

    if-eqz v3, :cond_12

    if-eqz v6, :cond_13

    .line 2258
    :cond_12
    :try_start_2
    const-string v9, "mode_comma"

    invoke-static {v9}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v9

    goto/16 :goto_0

    .line 2259
    :catch_1
    move-exception v2

    .line 2260
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v9, 0x7f0800db

    goto/16 :goto_0

    .line 2263
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_13
    const v9, 0x7f0800db

    goto/16 :goto_0

    .line 2266
    :cond_14
    const v9, 0x7f0800da

    goto/16 :goto_0

    .line 2269
    :cond_15
    iget-boolean v9, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsCommaKeyAsDefault:Z

    if-eqz v9, :cond_17

    if-eqz v3, :cond_16

    if-eqz v6, :cond_17

    .line 2272
    :cond_16
    :try_start_3
    const-string v9, "mode_comma"

    invoke-static {v9}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v9

    goto/16 :goto_0

    .line 2273
    :catch_2
    move-exception v2

    .line 2274
    .restart local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v9, 0x7f0800db

    goto/16 :goto_0

    .line 2277
    .end local v2    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_17
    const v9, 0x7f0800db

    goto/16 :goto_0

    .line 2284
    :cond_18
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2191
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2205
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
        0xd0 -> :sswitch_0
    .end sparse-switch
.end method

.method private getTextPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 8
    .param p1, "bIsLeftSplitKeyboard"    # Z

    .prologue
    .line 7850
    const-string v5, "SamsungIME"

    const-string v6, "getTextPopupKeyboard"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7852
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 7853
    const/4 v4, 0x0

    .line 7855
    .local v4, "xmlId":I
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    const v7, 0x656e4742

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    .line 7856
    .local v1, "language":I
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    .line 7857
    .local v2, "method":I
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 7858
    .local v0, "info":Landroid/view/inputmethod/EditorInfo;
    const/4 v3, 0x0

    .line 7860
    .local v3, "modeId":I
    const/4 v5, 0x7

    if-ne v2, v5, :cond_2

    .line 7861
    if-eqz p1, :cond_1

    .line 7862
    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getSplitLeftKeyboardXmlId(I)I

    move-result v4

    .line 7866
    :goto_0
    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I

    move-result v3

    .line 7885
    :goto_1
    iget-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v5, v4, :cond_0

    iget v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v5, v3, :cond_0

    iget-boolean v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v6

    if-eq v5, v6, :cond_7

    .line 7887
    :cond_0
    if-eqz v3, :cond_6

    .line 7888
    new-instance v5, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v4, v3}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 7893
    :goto_2
    iget-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-direct {p0, v5, v4, v3}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    .line 7898
    :goto_3
    iget-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    return-object v5

    .line 7864
    :cond_1
    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getSplitRightKeyboardXmlId(I)I

    move-result v4

    goto :goto_0

    .line 7868
    :cond_2
    const/16 v5, 0x8

    if-ne v2, v5, :cond_5

    .line 7869
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 7870
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getFloatingHWRKeyboardXmlId()I

    move-result v4

    .line 7871
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getHwrKeyboardModeId()I

    move-result v3

    goto :goto_1

    .line 7872
    :cond_3
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 7873
    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getFloatingPhonePadKeyboardXmlId(I)I

    move-result v4

    .line 7874
    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I

    move-result v3

    goto :goto_1

    .line 7876
    :cond_4
    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getFloatingKeyboardXmlId(I)I

    move-result v4

    .line 7877
    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I

    move-result v3

    goto :goto_1

    .line 7881
    :cond_5
    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getQwertyKeyboardXmlId(I)I

    move-result v4

    .line 7882
    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I

    move-result v3

    goto :goto_1

    .line 7890
    :cond_6
    new-instance v5, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v4}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_2

    .line 7895
    :cond_7
    iget-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iput-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_3
.end method

.method private getValidSymbolsPage(I)I
    .locals 9
    .param p1, "page"    # I

    .prologue
    const v8, 0x7f0a0004

    const v7, 0x7f0a0002

    .line 821
    const-string v4, "SamsungIME"

    const-string v5, "getValidSymbolsPage"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const/4 v1, 0x0

    .line 823
    .local v1, "maxPage":I
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    .line 824
    .local v2, "method":I
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "INPUT_LANGUAGE"

    const v6, 0x656e4742

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    .line 826
    .local v0, "language":I
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 827
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v3

    .line 828
    .local v3, "phoneNumberEditor":Z
    if-eqz v3, :cond_1

    .line 829
    sget-object v4, Lcom/diotek/ime/framework/common/Constant;->PHONE_NUMBER_EDITOR_SOFT_FUNC_KBD_SYMBOLS:[[Ljava/lang/String;

    array-length v1, v4

    .line 861
    .end local v3    # "phoneNumberEditor":Z
    :goto_0
    if-gez p1, :cond_7

    .line 862
    add-int/lit8 p1, v1, -0x1

    .line 866
    :cond_0
    :goto_1
    return p1

    .line 831
    .restart local v3    # "phoneNumberEditor":Z
    :cond_1
    sget-object v4, Lcom/diotek/ime/framework/common/Constant;->SOFT_FUNC_KBD_SYMBOLS:[[Ljava/lang/String;

    array-length v1, v4

    goto :goto_0

    .line 834
    .end local v3    # "phoneNumberEditor":Z
    :cond_2
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 838
    :pswitch_1
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 839
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 841
    :cond_3
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 842
    :cond_4
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 844
    :cond_5
    iget-boolean v4, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->ADD_SMILEY_SYMBOL:Z

    if-eqz v4, :cond_6

    invoke-static {v0}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 845
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 847
    :cond_6
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 849
    goto :goto_0

    .line 851
    :pswitch_2
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 852
    goto :goto_0

    .line 855
    :pswitch_3
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 857
    goto :goto_0

    .line 863
    :cond_7
    if-lt p1, v1, :cond_0

    .line 864
    const/4 p1, 0x0

    goto :goto_1

    .line 834
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isTabletCji()Z
    .locals 1

    .prologue
    .line 8127
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v0

    return v0
.end method

.method private setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V
    .locals 1
    .param p1, "keyboard"    # Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .param p2, "xmlId"    # I
    .param p3, "modeId"    # I

    .prologue
    .line 8190
    iput p2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    .line 8191
    iput p3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mModeID:I

    .line 8192
    iput-object p1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 8193
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    .line 8194
    return-void
.end method


# virtual methods
.method public closeView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8185
    invoke-super {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->closeView()V

    .line 8186
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    .line 8187
    return-void
.end method

.method protected getCNFloatingKeyboardViewRscId(I)I
    .locals 2
    .param p1, "method"    # I

    .prologue
    .line 8097
    const v0, 0x7f03001c

    .line 8098
    .local v0, "rscId":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 8099
    const v0, 0x7f030004

    .line 8101
    :cond_0
    return v0
.end method

.method protected getCNKeyboardViewRscId(I)I
    .locals 2
    .param p1, "method"    # I

    .prologue
    .line 8079
    const v0, 0x7f03001b

    .line 8080
    .local v0, "rscId":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 8081
    const v0, 0x7f030004

    .line 8085
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8086
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8087
    const v0, 0x7f030010

    .line 8092
    :cond_1
    :goto_1
    return v0

    .line 8082
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 8083
    const v0, 0x7f030016

    goto :goto_0

    .line 8089
    :cond_3
    const v0, 0x7f03000f

    goto :goto_1
.end method

.method protected getCurrentCandidateView()Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 6671
    const-string v2, "SamsungIME"

    const-string v3, "getCurrentCandidateView"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6672
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    .line 6673
    .local v1, "method":I
    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 6674
    .local v0, "isPopupKeyboard":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 6675
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v3, 0x7f03002d

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    .line 6677
    :goto_1
    return-object v2

    .line 6673
    .end local v0    # "isPopupKeyboard":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 6677
    .restart local v0    # "isPopupKeyboard":Z
    :cond_2
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v3, 0x7f030005

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/common/InputManager;->inflateWithCache(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    goto :goto_1
.end method

.method protected getCurrentKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 142
    const-string v1, "SamsungIME"

    const-string v2, "getCurrentKeyboard"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 146
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v0

    .line 147
    .local v0, "range":I
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isLandscapePhonenumberMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    const/4 v0, 0x1

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getSoftFuncKbd()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v1

    .line 180
    :goto_0
    return-object v1

    .line 155
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 177
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getTextKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 180
    :goto_1
    iget-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_0

    .line 157
    :pswitch_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getOneHandNumberKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 162
    :goto_2
    invoke-virtual {p0, v3}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    goto :goto_1

    .line 160
    :cond_2
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getNumberKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_2

    .line 165
    :pswitch_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 166
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getOneHandSymbolKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 170
    :goto_3
    invoke-virtual {p0, v3}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    goto :goto_1

    .line 168
    :cond_3
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getSymbolKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_3

    .line 173
    :pswitch_2
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getEmoticonKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_1

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getCurrentPhoneticSpellScroll()Landroid/widget/FrameLayout;
    .locals 3

    .prologue
    .line 6822
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v1, 0x7f03001b

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected getCurrentPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 7
    .param p1, "bIsLeftSplitKeyboard"    # Z

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 6828
    const-string v3, "SamsungIME"

    const-string v4, "getCurrentPopupKeyboard"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6829
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 6832
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v2

    .line 6833
    .local v2, "range":I
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 6834
    .local v0, "method":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getNumberAndSymbolsKeypadType()I

    move-result v1

    .line 6836
    .local v1, "numSymKeypadType":I
    packed-switch v2, :pswitch_data_0

    .line 6859
    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getTextPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 6862
    :goto_0
    iget-object v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    return-object v3

    .line 6838
    :pswitch_0
    if-ne v0, v6, :cond_0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 6839
    invoke-direct {p0, v5}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getFloatingPhonepadNumberPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_0

    .line 6840
    :cond_0
    const/4 v3, 0x7

    if-ne v0, v3, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isSplitEnableOneHandKeypad()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6841
    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getSplitNumberPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_0

    .line 6843
    :cond_1
    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getNumberPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_0

    .line 6847
    :pswitch_1
    if-ne v0, v6, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6849
    invoke-direct {p0, v5}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getFloatingPhonepadSymbolPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_0

    .line 6851
    :cond_2
    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getSymbolPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_0

    .line 6855
    :pswitch_2
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getEmoticonPopupKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_0

    .line 6836
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getCurrentSpellView()Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 6789
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v1, :cond_1

    .line 6797
    :cond_0
    :goto_0
    return-object v0

    .line 6792
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v2, 0x7f030042

    invoke-interface {v1, v2, v0}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    .line 6794
    .local v0, "layout":Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;
    if-eqz v0, :cond_0

    .line 6795
    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->init()V

    goto :goto_0
.end method

.method public getCurrentThaiVowelPageNum()I
    .locals 1

    .prologue
    .line 8170
    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentThaiVowelPageNum:I

    return v0
.end method

.method protected getEmoticonLayoutRscId(I)I
    .locals 1
    .param p1, "method"    # I

    .prologue
    .line 8220
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 8221
    const v0, 0x7f030011

    .line 8225
    :goto_0
    return v0

    .line 8222
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8223
    const v0, 0x7f030014

    goto :goto_0

    .line 8225
    :cond_1
    const v0, 0x7f03000f

    goto :goto_0
.end method

.method protected getEmoticonScrollLayoutRscId()I
    .locals 1

    .prologue
    .line 8248
    const v0, 0x7f080018

    return v0
.end method

.method protected getFloatingEmoticonKeyboardViewRscId(I)I
    .locals 2
    .param p1, "method"    # I

    .prologue
    .line 8114
    const v0, 0x7f030011

    .line 8115
    .local v0, "rscId":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 8116
    const v0, 0x7f030004

    .line 8118
    :cond_0
    return v0
.end method

.method protected getFloatingHWREmoticonLayoutRscId()I
    .locals 1

    .prologue
    .line 8242
    const v0, 0x7f030012

    return v0
.end method

.method protected getFullHwrKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 3

    .prologue
    .line 252
    const v1, 0x7f0500d8

    .line 254
    .local v1, "xmlId":I
    new-instance v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    .line 256
    .local v0, "mCurrentKeyboard":Lcom/diotek/ime/framework/view/DefaultKeyboard;
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    .line 257
    return-object v0
.end method

.method protected getFullHwrPanelViewRscId()I
    .locals 1

    .prologue
    .line 6708
    const v0, 0x7f030017

    .line 6710
    .local v0, "rscId":I
    return v0
.end method

.method protected getHWREmoticonLayoutRscId(I)I
    .locals 1
    .param p1, "method"    # I

    .prologue
    .line 8232
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 8233
    const v0, 0x7f030012

    .line 8235
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f030013

    goto :goto_0
.end method

.method protected getHWRFloatingKeyboardViewRscId(I)I
    .locals 2
    .param p1, "method"    # I

    .prologue
    .line 8067
    const/4 v0, 0x0

    .line 8069
    .local v0, "rscId":I
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8070
    const v0, 0x7f030025

    .line 8074
    :goto_0
    return v0

    .line 8072
    :cond_0
    const v0, 0x7f03001f

    goto :goto_0
.end method

.method protected getHWRKeyboardRscId()I
    .locals 1

    .prologue
    .line 6807
    const v0, 0x7f08001e

    return v0
.end method

.method public getHwPhonepadEnKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 6

    .prologue
    .line 8208
    const-string v3, "SamsungIME"

    const-string v4, "getHwPhonepadEnKeyboard"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8210
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "INPUT_LANGUAGE"

    const v5, 0x656e4742

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    .line 8211
    .local v0, "language":I
    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getPhonepadXmlId(I)I

    move-result v2

    .line 8212
    .local v2, "xmlId":I
    const v1, 0x7f0800da

    .line 8214
    .local v1, "modeId":I
    new-instance v3, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2, v1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    return-object v3
.end method

.method public getHwPhonepadKrKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 4

    .prologue
    .line 8198
    const-string v2, "SamsungIME"

    const-string v3, "getHwPhonepadKrKeyboard"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8200
    const v1, 0x7f0501bb

    .line 8201
    .local v1, "xmlId":I
    const v0, 0x7f0800da

    .line 8203
    .local v0, "modeId":I
    new-instance v2, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1, v0}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    return-object v2
.end method

.method public getKeyboardKeyList(Z)Ljava/util/List;
    .locals 2
    .param p1, "isDisregardHWKeyboardConnected"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/diotek/ime/framework/view/Keyboard$Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8132
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8133
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getQwertyKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    .line 8139
    :goto_0
    return-object v1

    .line 8135
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 8136
    .local v0, "method":I
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 8137
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 8139
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method protected getKeyboardOneHandDimView(Landroid/widget/FrameLayout;)Landroid/widget/ImageView;
    .locals 1
    .param p1, "layout"    # Landroid/widget/FrameLayout;

    .prologue
    .line 6761
    const v0, 0x7f080025

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getKeyboardOneHandLayout(Landroid/widget/FrameLayout;)Landroid/widget/LinearLayout;
    .locals 1
    .param p1, "layout"    # Landroid/widget/FrameLayout;

    .prologue
    .line 6756
    const v0, 0x7f08001f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected getKeyboardOneHandLayoutView(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;
    .locals 1
    .param p1, "layout"    # Landroid/widget/LinearLayout;
    .param p2, "isLeft"    # Z

    .prologue
    .line 6780
    if-eqz p2, :cond_0

    .line 6781
    const v0, 0x7f080020

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 6783
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f080023

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method protected getKeyboardOneHandTalkBackDimView(Landroid/widget/LinearLayout;)Landroid/widget/ImageView;
    .locals 1
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    .line 6766
    const v0, 0x7f080025

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getKeyboardOneHandView(Landroid/widget/LinearLayout;Z)Landroid/widget/ImageView;
    .locals 1
    .param p1, "layout"    # Landroid/widget/LinearLayout;
    .param p2, "isLeft"    # Z

    .prologue
    .line 6771
    if-eqz p2, :cond_0

    .line 6772
    const v0, 0x7f080021

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 6774
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f080024

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0
.end method

.method protected getKeyboardRscId()I
    .locals 1

    .prologue
    .line 6802
    const v0, 0x7f08000c

    return v0
.end method

.method protected getKeyboardView(Landroid/widget/LinearLayout;)Landroid/view/View;
    .locals 1
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    .line 6751
    const v0, 0x7f08000c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getKeyboardViewRscId(I)I
    .locals 2
    .param p1, "method"    # I

    .prologue
    .line 6694
    const v0, 0x7f03001a

    .line 6695
    .local v0, "rscId":I
    if-nez p1, :cond_1

    .line 6696
    const v0, 0x7f03001a

    .line 6703
    :cond_0
    :goto_0
    return v0

    .line 6697
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 6698
    const v0, 0x7f030004

    goto :goto_0

    .line 6699
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 6700
    const v0, 0x7f030016

    goto :goto_0
.end method

.method protected getOeHandCNPhonepadViewRscId()I
    .locals 1

    .prologue
    .line 6745
    const v0, 0x7f080027

    .line 6746
    .local v0, "rscId":I
    return v0
.end method

.method protected getOneHandCNKeyboardViewRscId()I
    .locals 2

    .prologue
    .line 6732
    const v0, 0x7f03001d

    .line 6733
    .local v0, "rscId":I
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6735
    :try_start_0
    const-string v1, "keyboard_input_cn_one_hand_for_talkback"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getLayout(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 6740
    :cond_0
    :goto_0
    return v0

    .line 6736
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected getOneHandKeyboardViewRscId(I)I
    .locals 2
    .param p1, "method"    # I

    .prologue
    .line 6715
    const v0, 0x7f030020

    .line 6716
    .local v0, "rscId":I
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6718
    :try_start_0
    const-string v1, "keyboard_input_one_hand_for_talkback"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getLayout(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 6724
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6725
    const v0, 0x7f030014

    .line 6727
    :cond_1
    return v0

    .line 6719
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected getPhoneticSpellScrollLayoutRscId()I
    .locals 1

    .prologue
    .line 6812
    const v0, 0x7f08001c

    return v0
.end method

.method protected getPhoneticSpellScrollViewRscId()I
    .locals 1

    .prologue
    .line 6817
    const v0, 0x7f080019

    return v0
.end method

.method protected getSplitKeyboardViewRscId(Z)I
    .locals 1
    .param p1, "isLeft"    # Z

    .prologue
    .line 8106
    if-eqz p1, :cond_0

    .line 8107
    const v0, 0x7f030022

    .line 8109
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f030023

    goto :goto_0
.end method

.method protected getThaiTextKeyboard(I)Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 12
    .param p1, "keyCode"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/high16 v9, 0x6b6d0000

    const v8, 0x656e4742

    .line 1982
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 1983
    const/4 v4, 0x0

    .line 1985
    .local v4, "xmlId":I
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 1986
    .local v1, "info":Landroid/view/inputmethod/EditorInfo;
    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I

    move-result v3

    .line 1987
    .local v3, "modeId":I
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    .line 1989
    .local v2, "method":I
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->isEnableOneHandKeypad()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1990
    packed-switch p1, :pswitch_data_0

    .line 2163
    :goto_0
    new-instance v5, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v4, v3}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .line 2164
    iget-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-direct {p0, v5, v4, v3}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    .line 2165
    iget-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    return-object v5

    .line 1993
    :pswitch_0
    :try_start_0
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    const v7, 0x656e4742

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_0

    .line 1994
    const-string v5, "one_hand_phonepad_km_special_01"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 2001
    :goto_1
    invoke-virtual {p0, v10}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    goto :goto_0

    .line 1996
    :cond_0
    :try_start_1
    const-string v5, "one_hand_phonepad_th_tone_01"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_1

    .line 1998
    :catch_0
    move-exception v0

    .line 1999
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0501a4

    goto :goto_1

    .line 2005
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :pswitch_1
    :try_start_2
    const-string v5, "one_hand_phonepad_th_tone"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    .line 2009
    :goto_2
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    goto :goto_0

    .line 2006
    :catch_1
    move-exception v0

    .line 2007
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0501a4

    goto :goto_2

    .line 2013
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :pswitch_2
    :try_start_3
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    const v7, 0x656e4742

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_1

    .line 2014
    const-string v5, "one_hand_phonepad_km"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v4

    .line 2021
    :goto_3
    invoke-virtual {p0, v11}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    goto :goto_0

    .line 2016
    :cond_1
    :try_start_4
    const-string v5, "one_hand_phonepad_th"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v4

    goto :goto_3

    .line 2018
    :catch_2
    move-exception v0

    .line 2019
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0501a4

    goto :goto_3

    .line 2024
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :pswitch_3
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentThaiVowelPageNum()I

    move-result v5

    if-ne v5, v10, :cond_3

    .line 2025
    invoke-virtual {p0, v6}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    .line 2027
    :try_start_5
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    const v7, 0x656e4742

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_2

    .line 2028
    const-string v5, "one_hand_phonepad_km_special_02"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 2030
    :cond_2
    const-string v5, "one_hand_phonepad_th_tone_02"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v4

    goto/16 :goto_0

    .line 2032
    :catch_3
    move-exception v0

    .line 2033
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0501a4

    .line 2034
    goto/16 :goto_0

    .line 2036
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    invoke-virtual {p0, v10}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    .line 2038
    :try_start_6
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    const v7, 0x656e4742

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_4

    .line 2039
    const-string v5, "one_hand_phonepad_km_special_01"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 2041
    :cond_4
    const-string v5, "one_hand_phonepad_th_tone_01"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    move-result v4

    goto/16 :goto_0

    .line 2043
    :catch_4
    move-exception v0

    .line 2044
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0501a4

    goto/16 :goto_0

    .line 2049
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_5
    const/16 v5, 0x8

    if-ne v2, v5, :cond_e

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2050
    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 2065
    :pswitch_4
    :try_start_7
    const-string v5, "floating_phonepad_th_tone"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    move-result v4

    .line 2069
    :goto_4
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    goto/16 :goto_0

    .line 2053
    :pswitch_5
    :try_start_8
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    const v7, 0x656e4742

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_6

    .line 2054
    const-string v5, "floating_phonepad_km_special_01"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_5

    move-result v4

    .line 2061
    :goto_5
    invoke-virtual {p0, v10}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    goto/16 :goto_0

    .line 2056
    :cond_6
    :try_start_9
    const-string v5, "floating_phonepad_th_tone_01"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_5

    move-result v4

    goto :goto_5

    .line 2058
    :catch_5
    move-exception v0

    .line 2059
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0501ec

    goto :goto_5

    .line 2066
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :catch_6
    move-exception v0

    .line 2067
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    const v4, 0x7f0501eb

    goto :goto_4

    .line 2073
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :pswitch_6
    :try_start_a
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    const v7, 0x656e4742

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_7

    .line 2074
    const-string v5, "floating_phonepad_km"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_7

    move-result v4

    .line 2085
    :goto_6
    invoke-virtual {p0, v11}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    goto/16 :goto_0

    .line 2076
    :cond_7
    :try_start_b
    const-string v5, "floating_phonepad_th"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_7

    move-result v4

    goto :goto_6

    .line 2078
    :catch_7
    move-exception v0

    .line 2079
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    invoke-interface {v5, v6, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_8

    .line 2080
    const v4, 0x7f0501b8

    goto :goto_6

    .line 2082
    :cond_8
    const v4, 0x7f0501ea

    goto :goto_6

    .line 2088
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :pswitch_7
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentThaiVowelPageNum()I

    move-result v5

    if-ne v5, v10, :cond_b

    .line 2089
    invoke-virtual {p0, v6}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    .line 2091
    :try_start_c
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    const v7, 0x656e4742

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_9

    .line 2092
    const-string v5, "floating_phonepad_km_special_02"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 2094
    :cond_9
    const-string v5, "floating_phonepad_th_tone_02"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_8

    move-result v4

    goto/16 :goto_0

    .line 2096
    :catch_8
    move-exception v0

    .line 2097
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    invoke-interface {v5, v6, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_a

    .line 2098
    const v4, 0x7f0501ba

    goto/16 :goto_0

    .line 2100
    :cond_a
    const v4, 0x7f0501ed

    goto/16 :goto_0

    .line 2104
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_b
    invoke-virtual {p0, v10}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    .line 2106
    :try_start_d
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    const v7, 0x656e4742

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_c

    .line 2107
    const-string v5, "floating_phonepad_km_special_01"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 2109
    :cond_c
    const-string v5, "floating_phonepad_th_tone_01"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_9

    move-result v4

    goto/16 :goto_0

    .line 2111
    :catch_9
    move-exception v0

    .line 2112
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    invoke-interface {v5, v6, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_d

    .line 2113
    const v4, 0x7f0501b9

    goto/16 :goto_0

    .line 2115
    :cond_d
    const v4, 0x7f0501ec

    goto/16 :goto_0

    .line 2122
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_e
    packed-switch p1, :pswitch_data_2

    goto/16 :goto_0

    .line 2132
    :pswitch_8
    const v4, 0x7f0501eb

    .line 2133
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    goto/16 :goto_0

    .line 2124
    :pswitch_9
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    invoke-interface {v5, v6, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_f

    .line 2125
    const v4, 0x7f0501b9

    .line 2129
    :goto_7
    invoke-virtual {p0, v10}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    goto/16 :goto_0

    .line 2127
    :cond_f
    const v4, 0x7f0501ec

    goto :goto_7

    .line 2136
    :pswitch_a
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    invoke-interface {v5, v6, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_10

    .line 2137
    const v4, 0x7f0501b8

    .line 2141
    :goto_8
    invoke-virtual {p0, v11}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    goto/16 :goto_0

    .line 2139
    :cond_10
    const v4, 0x7f0501ea

    goto :goto_8

    .line 2144
    :pswitch_b
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentThaiVowelPageNum()I

    move-result v5

    if-ne v5, v10, :cond_12

    .line 2145
    invoke-virtual {p0, v6}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    .line 2146
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    invoke-interface {v5, v6, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_11

    .line 2147
    const v4, 0x7f0501ba

    goto/16 :goto_0

    .line 2149
    :cond_11
    const v4, 0x7f0501ed

    goto/16 :goto_0

    .line 2152
    :cond_12
    invoke-virtual {p0, v10}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    .line 2153
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    invoke-interface {v5, v6, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_13

    .line 2154
    const v4, 0x7f0501b9

    goto/16 :goto_0

    .line 2156
    :cond_13
    const v4, 0x7f0501ec

    goto/16 :goto_0

    .line 1990
    :pswitch_data_0
    .packed-switch -0x3d
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 2050
    :pswitch_data_1
    .packed-switch -0x3d
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 2122
    :pswitch_data_2
    .packed-switch -0x3d
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method protected getVOHWRKeyboardViewRscId(I)I
    .locals 1
    .param p1, "method"    # I

    .prologue
    .line 8061
    const v0, 0x7f030024

    .line 8062
    .local v0, "rscId":I
    return v0
.end method

.method public initialize()V
    .locals 7

    .prologue
    const/16 v5, 0x1e0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 77
    invoke-super {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->initialize()V

    .line 78
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v0

    .line 79
    .local v0, "windowHeight":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v1

    .line 80
    .local v1, "windowWidth":I
    const/16 v2, 0x500

    if-ne v0, v2, :cond_3

    const/16 v2, 0x2d0

    if-ne v1, v2, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->IS_HD:Z

    .line 81
    const/16 v2, 0x780

    if-ne v0, v2, :cond_4

    const/16 v2, 0x438

    if-ne v1, v2, :cond_4

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->IS_FHD:Z

    .line 82
    const/16 v2, 0x3c0

    if-ne v0, v2, :cond_5

    const/16 v2, 0x21c

    if-ne v1, v2, :cond_5

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->IS_QHD:Z

    .line 83
    const/16 v2, 0x320

    if-ne v0, v2, :cond_6

    if-ne v1, v5, :cond_6

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->IS_WVGA:Z

    .line 84
    if-ne v0, v5, :cond_7

    const/16 v2, 0x140

    if-ne v1, v2, :cond_7

    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->IS_HVGA:Z

    .line 85
    const/16 v2, 0xa00

    if-ne v0, v2, :cond_8

    const/16 v2, 0x640

    if-ne v1, v2, :cond_8

    move v2, v3

    :goto_5
    iput-boolean v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->IS_WQXGA:Z

    .line 87
    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsKorMode:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v5, "CscFeature_Sip_EnableLanguageToggleButton"

    invoke-virtual {v2, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_0
    move v2, v3

    :goto_6
    iput-boolean v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_GLOBAL_KEY:Z

    .line 90
    const-string v2, "ATT"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Sip_ReplaceSymbolLayout4"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    .line 92
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v5, "CscFeature_Sip_EnableSmileySymbol"

    invoke-virtual {v2, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->ADD_SMILEY_SYMBOL:Z

    .line 94
    iget-boolean v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingAddtoNumberKeyFirstLine()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    iput-boolean v4, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    .line 96
    iput-boolean v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "TABLET_MODE"

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    .line 100
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeatureSipAddCommaKeyAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsCommaKeyAsDefault:Z

    .line 101
    iget-object v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    if-nez v2, :cond_2

    .line 102
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getShiftStateController()Lcom/diotek/ime/framework/common/ShiftStateController;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    .line 104
    :cond_2
    return-void

    :cond_3
    move v2, v4

    .line 80
    goto/16 :goto_0

    :cond_4
    move v2, v4

    .line 81
    goto/16 :goto_1

    :cond_5
    move v2, v4

    .line 82
    goto/16 :goto_2

    :cond_6
    move v2, v4

    .line 83
    goto/16 :goto_3

    :cond_7
    move v2, v4

    .line 84
    goto :goto_4

    :cond_8
    move v2, v4

    .line 85
    goto :goto_5

    :cond_9
    move v2, v4

    .line 87
    goto :goto_6
.end method

.method public isUseGlobalKey()Z
    .locals 1

    .prologue
    .line 8123
    iget-boolean v0, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_GLOBAL_KEY:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getTalkBackEnable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onChangeInputLanuage(Lcom/diotek/ime/framework/common/Language;)V
    .locals 4
    .param p1, "lang"    # Lcom/diotek/ime/framework/common/Language;

    .prologue
    const/4 v3, 0x0

    .line 108
    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setSecondarySymbolStatus(I)V

    .line 109
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingLanguageToast()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncKeyboardConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isHwKeyInput()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-eqz v1, :cond_3

    .line 113
    iget-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_1

    .line 114
    new-instance v1, Landroid/widget/Toast;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mToast:Landroid/widget/Toast;

    .line 115
    iget-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v3}, Landroid/widget/Toast;->setDuration(I)V

    .line 117
    :cond_1
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 118
    .local v0, "view":Landroid/widget/EditText;
    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    const v1, 0x7f020696

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 120
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 122
    iget-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 130
    .end local v0    # "view":Landroid/widget/EditText;
    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 132
    :cond_2
    return-void

    .line 124
    :cond_3
    iget-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_4

    .line 125
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mToast:Landroid/widget/Toast;

    goto :goto_0

    .line 127
    :cond_4
    iget-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onInitializeCustomResources()V
    .locals 2

    .prologue
    .line 6688
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 6689
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/diotek/ime/implement/resource/CustomResource;->init(Landroid/content/res/Resources;)V

    .line 6690
    return-void
.end method

.method protected onInitializeFonts()V
    .locals 2

    .prologue
    .line 6683
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/FontManager;->initialize(Landroid/content/Context;)V

    .line 6684
    return-void
.end method

.method public setCurrentThaiVowelPageNum(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 8175
    iput p1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentThaiVowelPageNum:I

    .line 8176
    return-void
.end method

.method public setSecondarySymbolStatus(I)V
    .locals 0
    .param p1, "currentLanguageID"    # I

    .prologue
    .line 8180
    invoke-super {p0, p1}, Lcom/diotek/ime/framework/view/AbstractViewController;->setSecondarySymbolStatus(I)V

    .line 8181
    return-void
.end method

.method protected setSymbolPage(I)V
    .locals 3
    .param p1, "page"    # I

    .prologue
    .line 815
    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getValidSymbolsPage(I)I

    move-result v0

    .line 816
    .local v0, "validPage":I
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "SYMBOLS_PAGE"

    invoke-interface {v1, v2, v0}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 817
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->updateKeyboard()V

    .line 818
    return-void
.end method
