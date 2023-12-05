import 'package:journal_linker/models/comment_model/comment_model.dart';
import 'package:journal_linker/models/comment_model/data_comment_model.dart';
import 'package:journal_linker/models/expertises_model/expertises_model.dart';
import 'package:journal_linker/models/faq_model/faq_model.dart';
import 'package:journal_linker/models/login_model/login_model.dart';
import 'package:journal_linker/models/question_model/data_question_model.dart';
import 'package:journal_linker/models/question_model/question_model.dart';

class DefaultModel<T> {
  T? data;
  bool? message;
  int? code;
  DefaultModel({
    required this.data,
    required this.message,
    this.code,
  });

  DefaultModel.fromJson(Map<String, dynamic> json) {
    try {
      switch (T) {
        case LoginModel:
          data = LoginModel.fromJson(json['data']) as T;
          break;
        case QuestionModel:
          data = QuestionModel.fromJson(json['data']) as T;
          break;
        case DataQuestionModel:
          data = DataQuestionModel.fromJson(json['data']) as T;
          break;
        case FaqModel:
          data = FaqModel.fromJson(json['data']) as T;
          break;
        case CommentModel:
          data = CommentModel.fromJson(json['data']) as T;
          break;
        case DataCommentModel:
          data = DataCommentModel.fromJson(json['data']) as T;
          break;
        case const (List<FaqModel>):
          {
            data = (json['data'] as List)
                .map((e) => FaqModel.fromJson(e))
                .toList() as T;
          }
          break;
        case ExpertisesModel:
          data = ExpertisesModel.fromJson(json['data']) as T;
          break;
        default:
          data = json['data'];
          break;
      }
    } catch (e) {
      print('ERROR====> $e');
    }
    message = json['success'] ?? '';
    code = json['status_code'] ?? 0;
  }
}
