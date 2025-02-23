package resolver

import "errors"

func (r *mutationResolver) checkPostAuthor(postID int, authorID string) error {
	rp, err := r.postClient.GetByID(postID)
	if err != nil {
		return err
	}
	if rp == nil {
		return errors.New("No existe")
	}
	if rp.AuthorID != authorID {
		return errors.New("No tiene permisos para realizar esta acción")
	}
	return nil
}

func (r *mutationResolver) checkCommentAuthor(commentID int, authorID string) error {
	rc, err := r.commentClient.GetByID(commentID)
	if err != nil {
		return err
	}
	if rc == nil {
		return errors.New("No existe")
	}
	if rc.AuthorID != authorID {
		return errors.New("No tiene permisos para realizar esta acción")
	}
	return nil
}
